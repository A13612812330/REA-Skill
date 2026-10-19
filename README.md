# REA-Skill

面向获授权应用与游戏的通用逆向/反编译工作流 Skill。围绕具体研究目标，组织文件识别、工具选择、代码恢复、功能追踪、数值与资源整理，以及证据验证。

本仓库原名 `ReverseGmae-Slotbound`，现以 REA-Skill 为主体；Slotbound Demo 的逆向工作作为独立案例子项目保留。仓库保持私有，改名不改变已有材料的授权或许可。

## 核心 Skill

入口：[skills/rea-skill/SKILL.md](skills/rea-skill/SKILL.md)。

- 理解“帮我逆向这个应用”“我需要反编译”等口语，先补齐目标、路径与授权范围，确认后开始。
- 默认离线、只读原包；根据 APK/IPA、PE/ELF/Mach-O、.NET、Electron/JS、LuaJIT 等格式选择现有工具。
- 整理可恢复代码、数值、图片、音频、语言文本，追踪指定功能与调用线索。
- 区分反编译文本、伪代码、重建实现和开发者原始源码，明确覆盖、失败与未验证项。
- 完整继承旧 `luajit-game-recovery` 的 LuaJIT 恢复流程；旧入口仅保留兼容。

这是分析工作流，不是反编译引擎，也不是任意程序的一键源码恢复器。各路线的工具可用性需当次核对；安装 Skill 不会自动安装 JADX、Apktool、Ghidra、IDA 或 REA MCP。

## 使用方式

将 `skills/rea-skill` 安装到支持 Skill 的代理环境，或让代理直接读取其 `SKILL.md`。仅复制该目录即可阅读通用方法；案例工具与材料不包含在该目录内。

可以直接说：

```text
使用 rea-skill 分析我有权研究的应用。
文件：E:\安装包\Example.apk
目标：研究伤害计算，查看相关配置与资源。
先离线分析，不运行应用；缺少工具先说明。
先给我补全单和操作流程，等我确认后开始。
```

这只是调用示例，不代表已授权读取该路径。运行应用、连接设备、模块求值、安装工具、修改重打包和远程发布分别确认范围。

## 目录

```text
REA-Skill/
  README.md
  GITHUB_HANDOFF.md
  skills/
    rea-skill/                 通用 Skill、专项参考、只读预检与测试
    luajit-game-recovery/      旧名称兼容入口
  cases/
    slotbound-demo/            Slotbound 案例、工具、数据、资源与历史证据
```

新目标默认另建研究目录，不写入 Slotbound 案例，也不自动加入本仓库。经确认适合归档的案例才以独立子项目加入；通用方法与目标专用适配分开维护。

## 案例

| 子项目 | 内容 | 已记录验证与限制 |
| --- | --- | --- |
| [Slotbound Demo](cases/slotbound-demo/README.md) | LuaJIT 文本恢复、数值导出、资源索引和工具 | 历史报告为 55/55 语法通过、9 个数据模块及 215 组纯函数用例匹配；不代表完整可玩或 Mod 加载成功 |

查看案例：[解析文件说明](cases/slotbound-demo/解析文件说明.md)、[Mod 参考入口](cases/slotbound-demo/MOD_REFERENCE.md)。案例恢复代码和第三方游戏素材不因仓库改名而成为开源资源，不得把个人研究许可等同于公开再分发许可。

## 检查

以下命令从仓库根目录执行，只核对 Skill 测试和已有案例报告，不运行游戏或反编译器：

```powershell
python -B -m unittest discover -s skills/rea-skill/scripts -p "test_*.py"
python -B skills/rea-skill/scripts/preflight.py --project cases/slotbound-demo
```

`--project` 必须指向案例根目录，而非本仓库根目录。历史报告中的旧绝对路径保留为当时证据；当前位置以案例说明为准。重放步骤见 [Slotbound 专项适配](skills/rea-skill/references/slotbound-build.md)，未在本次目录整理中重新反编译或验证游玩。

方法来源与继承关系见 [sources.md](skills/rea-skill/references/sources.md)。仓库迁移、发布范围和交接见 [GITHUB_HANDOFF.md](GITHUB_HANDOFF.md)。
