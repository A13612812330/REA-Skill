# Slotbound Demo 专用适配

## 支持样本与现有证据

以下为本仓库已分析样本的历史验证结果，不承诺其他版本，也不代表重新运行验证。

| 项目 | 值 |
| --- | --- |
| 原游戏 EXE SHA-256 | `2db4b93b52cd6daec9014f6e8ee42f78d32f683a496af35a8b03d8b97f4fccb7` |
| 文件大小 / PE 节区结束 | 71,138,190 / 588,288 字节 |
| 引擎 / 运行库 | LÖVE 11.5 / LuaJIT 2.1.1700008891 |
| 容器 | 外层 `SBNAT002`，内层 `SBMEM002` |
| 验证 | AES-256-GCM 认证与内置明文 SHA-256 均通过，未修改校验分支 |
| 明文内容 | 3,931 字节启动字节码 + 70,545,871 字节 ZIP |
| 提取 / 恢复 | 1,378 文件；54 游戏脚本 + 1 启动脚本 |
| 当前源码 | 55/55 语法通过，其中 8 文件经过 AST 局部变量整理 |
| 数据 / 纯函数 | 9 模块数据匹配；180 战力 + 35 大奖判定用例匹配 |
| 资源 | 1,215 PNG、64 音频、11 语言 JSON |

游戏路径：`E:\SteamLibrary\steamapps\common\Slotbound Demo`。
本次项目：`E:\新建文件夹\Codex-GPT\games\Slotbound-Mod`。
换电脑后以实际项目根目录为准，不把本机绝对路径写成通用默认值。

最终证据是 `analysis/recovered-source-quality.json`、`analysis/recovered-comparison.json` 和 `analysis/delivery-summary.json`。语言模块因依赖 `io` 未在受限 VM 中求值；其 JSON 直接提取。全部技能、整局可玩、存档兼容、Mod 加载仍未验证。

## 环境和依赖

专用重放需要克隆完整仓库。本 Skill 文件夹不附带游戏资源、`tools/` 或第三方二进制。

- Windows、Python 3.11；重放编译检查还需原游戏的可信 `lua51.dll`。
- 包分析：`pefile`、`capstone`；提取：`cryptography`。
- 资源预览：`Pillow`；AST 整理：`tree-sitter`、`tree-sitter-lua`。
- 记录版本：pefile 2024.8.26、Capstone 5.0.9、cryptography 48.0.1、Pillow 12.2.0、tree-sitter 0.26.0、tree-sitter-lua 0.5.0。
- 常量导出需 `tools/luajit-decompiler`，上游 `Dr-MTN/luajit-decompiler` 提交 `e4552fda8bece1aa7b9ca12025179eb1b11dac1e`。
- v2 发布版 `Mar_24_2024`，上游 `marsinator358/luajit-decompiler-v2`，EXE SHA-256：`d98fedf8041df653904db28a1daaf65ce355487307ae49c573ae94491140bb6a`。

依赖位于本机 `tools/vendor` 或 Python 环境，不随仓库上传。安装前先确认环境和授权；不要默认下载“最新”替代已固定版本。预检脚本不验证依赖能否导入，也不加载运行库。

`tools/read_lua_tables.py` 的 `RUNTIME` 与 `tools/verify_recovered.py` 的 EXE 路径目前硬编码为上面的安装目录。更换路径必须审查并按授权修改这些项目脚本，不能只改变命令行工作目录。

## 重放顺序

以下命令都从完整仓库根目录执行。它们是按需阶段，不是应在已有结果目录直接粘贴执行的一键脚本。

**先检查已有输出。** `extract_package.py`、导出器、整理器和报告脚本会写入/覆盖文件；`unpack_content.py` 拒绝覆盖已有目标。重放应在单独的完整仓库工作副本中，先选择新的输出或经用户批准备份已有产物。多数后续工具用自身位置推导固定项目根路径，不能通过切换 cwd 把输出重定向。

### A. 静态识别与提取

```powershell
python tools/inspect_package.py "E:\SteamLibrary\steamapps\common\Slotbound Demo\Slotbound.exe" analysis
python tools/extract_package.py "E:\SteamLibrary\steamapps\common\Slotbound Demo\Slotbound.exe" extracted
python tools/unpack_content.py extracted/content.bin extracted/game-files
```

`inspect_package.py` 也带有本次 x64 PE 的目录/尾部假设，不是任意 PE 通用解析器。

提取器验证固定 EXE 哈希、头尾布局、GCM 认证、内置 SHA-256、内层长度和字节码文件头。源代码中的 RVA 与密钥组合方式属于这个加载器，不得用于不同哈希样本。输出为 `startup.ljbc`、`content.bin`、`extraction.json`，解包生成 `game-files/` 和 `inventory.json`。

### B. 反编译游戏脚本与启动脚本

```powershell
python tools/run_v2.py
```

该脚本在缺少工具时会联网下载、验哈希并执行，需相应授权。它只处理 `extracted/game-files` 中的 **54 个** `.lua` 字节码。`analysis/v2-run.json` 的 54 不包含启动脚本。

启动脚本需单独输入固定版 v2；从仓库根目录可按该工具的单文件接口操作：

```powershell
Push-Location tools/v2
try {
    & .\luajit-decompiler-v2.exe "../../extracted/startup.ljbc" -s -o "../../decompiled-v2"
    if ($LASTEXITCODE -ne 0) { throw "Startup decompilation failed" }
} finally {
    Pop-Location
}
```

输出目录需预先存在（`run_v2.py` 会创建）；不要加 `-f` 覆盖已有输出。上游 `-o` 指目录而非文件，单文件输出为 `startup.lua`。采用 ASCII 相对参数是为了避开上游 ANSI 路径限制。接口见上游 `main.cpp`；本 Skill 整理时未重新执行整个反编译流程，应核对输出与原始输入的路径集合，不能仅凭退出码通过。

### C. 资源/数值导出（需要时）

```powershell
python tools/export_constants.py
python tools/read_lua_tables.py
python tools/preview_assets.py
python tools/build_catalogs.py
```

`export_constants.py` 只静态解析；`read_lua_tables.py` 会执行选定模块初始化，不是纯静态读取。后者仅开放裁剪后的基础、数学、字符串和表功能；不等于安全沙箱。`skill` 语言依赖用空表替身；函数与循环引用以类型标记导出。

`build_catalogs.py` 会写旧 LJD 的 `source-quality.json` 与 `delivery-summary.json`，所以应先做这一步，最后再生成当前恢复报告。

### D. 整理、对照、最终报告

确保 `decompiled-v2` 含 54 游戏脚本及 `startup.lua`，再执行：

```powershell
if (-not (Test-Path analysis/recovered-comparison.json)) {
    python tools/verify_recovered.py
}
python tools/normalize_v2_locals.py
python tools/verify_recovered.py
python tools/audit_recovered.py
```

整理器只对固定 8 路径应用 AST 规则，其他文件原样复制；输出到 `recovered-source/`。对照和编译依赖原游戏 DLL；编译在独立子进程中完成。当前工具未对所有 subprocess 配置超时，重放时由外层执行器设置合理总超时，超时/崩溃按失败处理，不视为通过。

`normalize_v2_locals.py` 末尾也会调用审计并读取对照报告，因此上面的条件分支会在缺少报告时先生成初始报告。此时恢复目录可能不存在，部分比较会失败；该初始报告不是验收结果。整理后重新对照，再以最后一次 `audit_recovered.py` 为准。工具自身打印完成不代表所有文件语法通过，必须读取结果报告。

## 查看入口与版本差异

- 当前文本：`recovered-source/`；原字节码：`extracted/game-files/`。
- 数值：`data/constants.json`、`data/skills.csv`、`data/random-options.csv`、`data/awakening-stages.csv`。
- 资源：`extracted/game-files/src/sprites/`、`src/audio/`、`src/language/`；索引位于 `preview/`。
- 静态常量：`data/bytecode-constants/`；反汇编：`bytecode-disassembly/`。
- 旧 `decompiled*` 和旧 `source-quality.json` 不代表当前恢复质量，部分目录仅在本机保留。
- 第三方参考 `liusu239113/SlotboundLua` 固定提交 `57492bbe9c273d2c3e13387024436119c886d341`，与本机版本不同，不能覆盖本机结果或视为官方源码；身份/许可尚未确认。

上传前审查选定文件，使用已有 `tools/audit_upload.py` 检查常见凭据特征与文件范围，再运行 `git diff --cached --check`。该审计会写 `analysis/upload-audit.json`；它不是完整安全或版权审核。保持仓库当前私有性，不自动公开或给第三方内容增加许可。
