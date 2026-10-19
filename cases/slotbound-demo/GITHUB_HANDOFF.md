# GitHub 备份与使用说明

仓库名称现为 `REA-Skill`（原名 `ReverseGmae-Slotbound`）。本案例位于 `cases/slotbound-demo/`；仓库总体定位和换机说明见 [根目录交接](../../GITHUB_HANDOFF.md)。下文相对路径和工具命令均以案例目录为根。

首次上传采用私有仓库，内容分支为 `feature/initial-analysis`。

## 入口

先阅读 [解析文件说明](解析文件说明.md) 和 [Mod 参考入口](MOD_REFERENCE.md)。

逆向工作流统一使用 [REA-Skill](../../skills/rea-skill/SKILL.md)。LuaJIT 能力、预检和专项资料已纳入新目录，旧 `luajit-game-recovery` 保留兼容；移动端入口见 [APK/IPA 操作](../../skills/rea-skill/references/mobile-applications.md)。Skill 文件不自动安装工具、注册 MCP 或授权设备操作。

`recovered-source` 是本机 Demo 字节码恢复后的 55 份 Lua 文本；`data` 是数值导出；`extracted/game-files` 保留原始包内文件，含美术、音频和脚本字节码。

这是个人 Mod 研究备份，恢复文本不是开发者原始工程。未赋予第三方游戏素材或恢复代码新的开源许可，也未验证完整可玩 Mod。

## 上传范围

- 中文说明、当前恢复源码及原字节码。
- JSON/CSV 数值表、静态常量、字节码反汇编。
- 图片、音频、语言文件和预览索引。
- 包分析、源码编译和行为对照报告。
- 本项目分析脚本。
- 单独标注出处的第三方公共 Lua 参考及文件校验记录。

## 仅保留在本机的内容

- `extracted/content.bin`：重复的完整 ZIP 内容；仓库已保留其提取文件。
- `decompiled`、`decompiled-partial`、`decompiled-alternative`、`decompiled-v2`：历史输出或未整理文本。
- `tools/vendor`、`tools/v2`、`tools/luajit-decompiler`、`tools/luajit-decompiler-v2-source`：依赖、下载的工具和工具检出目录。
- Python 缓存、旧反编译运行日志。
- 游戏原始 EXE、DLL、存档、Codex 配置和凭据。

上述本机目录可能仍被历史说明提及；克隆仓库后缺少它们属于预期，不代表当前恢复源码丢失。

## 在其他电脑上查看

查看 Lua、Markdown、JSON、CSV、图片和音频不需要运行游戏或分析脚本。

CSV 使用 UTF-8 编码。若表格软件打开中文异常，通过其文本导入功能选择 UTF-8。

当前脚本包含本机目录 `E:\SteamLibrary\steamapps\common\Slotbound Demo`。重新分析前需要安装相同版本游戏并检查对应路径；不会随仓库分发原游戏启动器或运行库。

编译和数值对照脚本使用游戏目录内的 `lua51.dll`，不能仅凭克隆仓库就独立运行。脚本只用于分析副本，不是 Mod 启动器。

## 需要重新分析时

运行环境为 Windows、Python 3.11。按目标脚本安装其依赖：

- 包结构和提取：`pefile`、`cryptography`，反汇编使用 `capstone`。
- 图片检查：`Pillow`。
- Lua AST 整理：`tree-sitter`、`tree-sitter-lua`。
- 旧常量导出脚本：需要额外检出 `Dr-MTN/luajit-decompiler`，本机采用提交 `e4552fda8bece1aa7b9ca12025179eb1b11dac1e`。
- v2 恢复：`tools/run_v2.py` 会获取固定发布版并校验程序 SHA-256。

当前恢复流程：

```powershell
python tools/run_v2.py
python tools/normalize_v2_locals.py
python tools/verify_recovered.py
python tools/audit_recovered.py
```

仅在需要重新生成时使用这些命令；普通源码阅读不需要执行。原 EXE 的提取脚本绑定已分析版本的哈希，其他版本必须重新检查包布局。

## 已验证边界

当前报告记录 55/55 份文本语法通过，9 个数据模块返回表对照一致，215 组纯逻辑测试对照一致。函数类型占位的表比较不能证明所有技能行为等价。

尚未验证整局运行、存档兼容、全部技能效果和 Mod 加载方式。各项证据位于 `analysis`，不要用旧 `source-quality.json` 代替当前 `recovered-source-quality.json`。
