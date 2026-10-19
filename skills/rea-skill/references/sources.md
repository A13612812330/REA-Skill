# 来源、继承关系与实测边界

整合日期：2026-10-19（Asia/Shanghai）。这是自行组织的中文工作流，不是上游 REA 官方发行物；没有复制上游实现、下载二进制或将其工具能力声称为本机已安装能力。

## REA 方法参考

| 来源 | 阅读提交 | 采用的方法 |
| --- | --- | --- |
| https://github.com/morluto/rea | `974487f00f2d68912c7c2c9e033a2760a343a82e` | 按目标路由、MCP/CLI 协作、摘要与保留证据、功能追踪、静态/动态分层和未知项管理 |
| https://github.com/bbylw/rea-cn | `e8fda7a778081bed8b377b888defffb723310dbd` | 中文说明与使用场景参考；不是第二个独立反编译引擎 |

核对材料：主项目 README、`.agents/skills/reverse-engineer-anything/SKILL.md`、`docs/android-analysis.md`、`docs/apple-application-analysis.md`，及中文仓库 README。链接中的 main 可能变化，复核时使用表中提交。

主仓库标注 MIT；中文仓库 GitHub 元数据未识别出其自身许可证，README 指向主仓库 MIT 不等于确认中文仓库全部材料采用该许可。因此只用作方法/场景参考，不复制其中代码或整段说明，不给第三方材料新增许可。

REA 的仓库 main、已发布 npm 包和当前会话可用能力是三种状态，不能相互替代。需要安装/使用时另核对对应版本、主机要求和实际工具 schema。本 Skill 不固定整个 REA 运行环境，也不执行其 setup。

## LuaJIT 能力来源

旧版来自本仓库提交 `6f97bb5e2e96d1b408ce1cab0874609961c1517d` 的 `skills/luajit-game-recovery`：

- `references/workflow.md`：保留全部 LuaJIT 专项流程，修改标题以避免与通用流程混淆。
- `references/slotbound-build.md`：保留固定样本、命令、依赖与验证限制。
- `scripts/preflight.py`：继承原只读预检实现。
- `scripts/test_preflight.py`：继承原 11 项回归测试，并补充 CLI 检查。

旧目录作为兼容快照保留，新增功能维护在 `rea-skill`。新目录没有指向旧目录的运行或指令依赖，单独复制即可阅读通用与移动端路线；Slotbound 全量重放仍依赖完整项目工具及用户原游戏运行库。

## 移动端工具来源

以下仅为官方用法和限制的核对入口，不是自动下载/执行指令：

- JADX：https://github.com/skylot/jadx （核对 README 的 `-d`、输入格式与恢复不完整警告）。
- Apktool：https://apktool.org/docs/cli-parameters/ （解码命令、输出参数）。
- APK Analyzer：https://developer.android.com/tools/apkanalyzer （包概要与 manifest 查询）。
- apksigner：https://developer.android.com/tools/apksigner （签名验证与证书输出）。
- bundletool：https://developer.android.com/tools/bundletool （AAB 与 APK 集合区别）。
- adb：https://developer.android.com/tools/adb （设备选择与设备操作）。

本轮成功读取 JADX README 与 Apktool CLI 页面；Android 官方 APK Analyzer / apksigner 页面访问超时，其他 Android 官方链接仅作参考入口。文中相关命令是待用本机 help 复核的示例，未在本机运行；不可把列出链接当作逐项验证通过。

本轮验证只覆盖 Skill 结构/引用、继承脚本测试和 Slotbound 已存报告预检。没有重新反编译游戏，也没有执行 APK/IPA、安装移动端工具、连接设备或声称其他引擎已端到端验证。
