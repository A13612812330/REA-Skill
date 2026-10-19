# Slotbound Demo 本地分析

目标：检查安装包结构，定位脚本、数值配置和美术资源，评估个人 Mod 的可行性。

原始目录：`E:\SteamLibrary\steamapps\common\Slotbound Demo`

所有分析产物保存在本目录；原安装目录不修改。按用户后续授权，将恢复源码、资源和分析材料备份至私有 GitHub 仓库 `ReverseGmae-Slotbound`，上传范围和克隆说明见 [GITHUB_HANDOFF.md](GITHUB_HANDOFF.md)。

分析日期：2026-10-15（北京时间）。

## 可复用 Skill

统一入口为 [REA-Skill](skills/rea-skill/SKILL.md)，已完整纳入旧 `luajit-game-recovery` 的 LuaJIT 流程、Slotbound 固定版本适配、反编译与数值/资源导出方法、验证边界及只读预检脚本。新增通用目标路由、功能追踪、证据工作流，以及 [APK/Android 与 IPA/iOS 操作说明](skills/rea-skill/references/mobile-applications.md)。

方法参考 `morluto/rea` 与 `bbylw/rea-cn`，固定阅读提交、继承关系和许可边界见 [来源说明](skills/rea-skill/references/sources.md)。REA-Skill 是工作流，不是反编译引擎；其他路线需要对应现成工具，不代表本机已安装或已实测。Slotbound 完整重放仍需本仓库 `tools/` 和原游戏运行库，不是通用一键破解器。

本仓库只提供 Skill 文件，未自动安装到 Codex。需要安装时，由用户授权后将 `skills/rea-skill` 整个目录交给 Skill 安装工具处理；安装后统一调用 `$rea-skill`。未安装时可让代理读取该目录 `SKILL.md`，阅读流程和运行预检不需要安装。旧 [luajit-game-recovery](skills/luajit-game-recovery/SKILL.md) 保留为兼容快照，新目录不依赖旧目录。未自动注册 REA MCP 或安装任何逆向工具。

## 结果

资源包已完整解出，55 份脚本均已恢复为可读 Lua 并通过语法编译检查。已经对照部分数值和纯逻辑，尚未制作或验证可玩的 Mod。先看 [Mod 参考入口](MOD_REFERENCE.md)。

| 内容 | 已验证结果 |
| --- | --- |
| 包内文件 | 1,378 个，解压后 94,288,551 字节 |
| 游戏脚本 | 54 个 LuaJIT 2.1 字节码文件 |
| 额外启动脚本 | 1 个 LuaJIT 字节码文件 |
| 可读 Lua 文本 | 55 份，全部通过原 LuaJIT 运行库的语法编译检查 |
| 数值表对照 | 9 个模块与原字节码返回数据一致；函数仅按类型标记 |
| 纯逻辑对照 | 战力计算 180 组、大奖判定 35 组，与原字节码一致 |
| PNG | 1,215 张，全部通过 Pillow 文件校验 |
| 音频 | 64 个：51 WAV、7 MP3、6 OGG |
| 语言 JSON | 11 份，均可解析；中文文件有 5,619 个条目 |
| 技能定义 | 125 项 |
| 随机词条 | 32 项 |
| 觉醒阶段清单 | 1,645 行，包含当前及旧版本配置，不代表全部同时启用 |
| 单位动画资源定义 | 114 项，不等于 114 个可玩单位 |

## 从哪里看

- [全局数值 JSON](data/constants.json)：经济、旋转、符号权重、幸运修正、成长、刻印。
- [技能清单](data/skills.csv)：中文名称、描述、冷却、持续时间、图标、效果和运行参数。
- [技能原始数据导出](data/skill.json)。
- [随机词条](data/random-options.csv)：中文效果、变体数值和对应权重。
- [觉醒阶段](data/awakening-stages.csv)：版本、ID、中文说明和各阶段参数。
- [单位动画定义](data/unit-sprites.csv)：资源路径、帧尺寸、动画帧数和速度。
- [全部表常量](data/table-constants.csv)：68,009 个表单元格，带脚本、函数原型和表索引。
- [美术总览](preview/assets-contact-sheet.jpg)。
- [全部图片索引](preview/image-index.csv)：原始路径、宽高、大小。
- [原始美术目录](extracted/game-files/src/sprites)。
- [音频目录](extracted/game-files/src/audio)。
- [中文文本](extracted/game-files/src/language/chinese.json)。
- [当前恢复源码](recovered-source)；[v2 未整理输出](decompiled-v2)。
- [全部字节码反汇编](bytecode-disassembly)。
- [当前源码质量逐文件清单](analysis/recovered-source-quality.json)。
- [原字节码与恢复文本对照](analysis/recovered-comparison.json)。

`extracted/game-files` 中后缀为 `.lua` 的文件仍是原始字节码，不是可直接编辑的文本源码。

## 已核实的数值示例

以下来自原字节码的数据表，不依赖反编译文本是否正确：

| 配置 | 包内值 |
| --- | --- |
| 每波免费旋转 | 3 次 |
| 付费旋转初始价格 | 100 |
| 每次付费价格递增 | 50 |
| 每波付费旋转上限 | 3 次 |
| 符号权重 | S=0.20、A=0.20、W=0.20、H=0.15、M=0.15、D=0.10 |
| `hiddenLuck.naturalWinProbability` | 0.2274 |
| 守护姿态 | 冷却 4 秒，持续 1 秒；运行参数 `minRank=2` |
| 战斗本能词条 | 攻击 +6%/+7%/+8%/+9%/+10%，对应权重 0.40/0.25/0.18/0.12/0.05 |

这些是包内配置，不是对实际游玩结果的承诺。运行时技能、进度、模式和其他逻辑可能覆盖配置；尤其不能把 `0.2274` 直接解释为任意一次旋转的实际中奖率。

## 源码恢复程度

当前使用 LuaJIT Decompiler v2 标准版 `Mar_24_2024`，55 个输入全部生成文本，其中 47 份直接通过编译，8 份因生成的局部变量超过 LuaJIT 限制而失败。对这 8 份使用 Lua AST 将生成局部变量整理到各词法块的局部表中，整理后 55 份全部通过。原始 v2 输出单独保留。

`recovered-source` 是恢复文本，不是开发者原始工程。原始注释、被剥离的局部变量名和开发目录历史无法保证恢复。局部变量整理、其他函数和整体控制流仍需实际运行验证。

已在没有文件读写、系统接口和游戏启动的独立 VM 中对照：9 个数据模块返回表一致，5 个战力函数共 180 组输入和大奖判定 35 组输入一致。函数和循环引用以类型标记比较，故表比较不证明技能函数或闭包的行为一致。语言模块依赖文件接口，未在此 VM 中执行；语言 JSON 已直接提取。

旧 Python LJD 的 50 份文本、20 份语法通过记录仍保留于 `decompiled`、`decompiled-partial` 和旧报告，仅作历史输出，不代表当前恢复质量。

另外已获取公共仓库 `liusu239113/SlotboundLua` 的 46 份 Lua 和 2 份说明文件，固定提交及逐文件校验值保存在 `external-reference/provenance.json`。这是身份与许可尚未确认的第三方恢复材料；其中技能定义 48 个，本机 125 个，常量与模块结构不同，不将其当作本机版本或开发者原始源码。对比证据见 `analysis/public-reference-comparison.json`。

## 数据如何取得

数据导出分为两类：

1. `data/bytecode-constants` 和 `table-constants.csv` 由 LJD 直接解析原字节码，不运行游戏逻辑。常量表不包含全部运行时计算值，也不能单凭邻近位置推断某个数值属于哪个单位。
2. `data/constants.json`、`asset2.json`、`awakening.json`、`randomoption.json` 等由独立 Lua VM 读取模块返回表。仅开放基础、数学、字符串和表能力，移除了文件加载函数，没有开放 `io`、`os`、`package` 或 FFI。函数只标记为 `{"_lua_type":"function"}`，不调用。

`skill.json` 的模块初始化依赖语言模块：本次以空表代替该依赖，读取定义表后再用原始中文 JSON 关联名称和说明。没有执行战斗或技能函数。`language.lua` 在受限环境中无法初始化，因此直接使用包内语言 JSON。

循环表引用标记为 `{"_lua_type":"table-reference"}`；例如觉醒版本 8 指向当前根表，当前候选定义位于 `awakening.json` 顶层，而不是丢失。

## 包结构

- 日志记录引擎为 LÖVE 11.5；Lua DLL 标识为 LuaJIT 2.1.1700008891。
- EXE 为 x64 PE，长度 71,138,190 字节。
- PE 节区结束于 588,288，后附 70,549,902 字节。
- 外层自定义标记为 `SBNAT002`，使用 AES-256-GCM 认证加密。
- 本地读取时 GCM 认证和启动器内置的明文 SHA-256 校验均通过，未修改校验分支。
- 明文以 `SBMEM002` 开头，包含 3,931 字节启动字节码和 70,545,871 字节 ZIP。
- ZIP 保存在 `extracted/content.bin`，原目录结构位于 `extracted/game-files`。

详细证据见 `analysis/package.json`、`extracted/extraction.json` 和 `extracted/inventory.json`。

分析前后 EXE SHA-256 均为：

```text
2db4b93b52cd6daec9014f6e8ee42f78d32f683a496af35a8b03d8b97f4fccb7
```

没有启动游戏、写入存档或修改安装文件。解析材料按用户后续授权备份至私有 GitHub 仓库，具体范围见 `GITHUB_HANDOFF.md`。

## 工具与复现

现成工具和上游资料：

- LJD：<https://github.com/Dr-MTN/luajit-decompiler>
- 本地检出的 LJD 提交：`e4552fda8bece1aa7b9ca12025179eb1b11dac1e`
- LÖVE 文件系统源码：<https://github.com/love2d/love/tree/main/src/modules/filesystem>
- Capstone：<https://github.com/capstone-engine/capstone>
- Cryptography AESGCM：<https://cryptography.io/en/latest/hazmat/primitives/aead/>

本机使用 Python 3.11、Capstone 5.0.9、pefile 2024.8.26、cryptography 48.0.1、Pillow 12.2.0。项目 `tools/vendor` 另含 tree-sitter 0.26.0、tree-sitter-lua 0.5.0，用于 Lua AST 整理。

v2 工具来源：`https://github.com/marsinator358/luajit-decompiler-v2`，二进制 SHA-256：`d98fedf8041df653904db28a1daaf65ce355487307ae49c573ae94491140bb6a`。

在本目录打开 PowerShell 后，可按需运行：

```powershell
python tools/inspect_package.py "E:\SteamLibrary\steamapps\common\Slotbound Demo\Slotbound.exe" analysis
python tools/export_constants.py
python tools/read_lua_tables.py
python tools/preview_assets.py
python tools/build_catalogs.py
```

当前恢复流程：`tools/run_v2.py` → `tools/normalize_v2_locals.py` → `tools/verify_recovered.py` → `tools/audit_recovered.py`。最后一步在独立编译进程中写出当前质量报告。`build_catalogs.py` 会重新生成旧 LJD 的汇总，不能用其报告代替当前 `recovered-source-quality.json`。

首次提取使用 `tools/extract_package.py`，随后使用 `tools/unpack_content.py`。后者拒绝覆盖已有目标；当前已解出，不需要重复执行。提取脚本绑定本次 EXE 哈希，其他版本需要重新检查布局。

`tools/decompile_all.py` 调用未修改的上游 LJD，每个输入先尝试普通模式，再尝试容错模式；单次尝试最多 45 秒。日志保存在 `analysis/decompiler-logs`。

## 后续 Mod

本轮完成的是解析和可查看材料。可玩 Mod 还需要选定修改目标、建立独立运行副本或加载方式，并实际启动验证。特别是发行包同时含运行时完整性相关模块，不能仅凭成功提取就断言改文件后可以直接运行。
