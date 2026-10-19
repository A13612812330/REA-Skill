# 目标与工具路由

格式识别先于深度分析。以下是选择现有工具的方法，不是本机安装清单或已经实测的支持矩阵。调用前核对主机、工具版本、许可、实际 schema 和目标格式。

| 证据/目标 | 首选路线 | 可交付及限制 |
| --- | --- | --- |
| LÖVE、LuaJIT 字节码 | 本 Skill `workflow.md`；Slotbound 才加载固定样本适配 | 可读 Lua、常量、数值与资源；不能推广固定提取参数 |
| APK、DEX | `mobile-applications.md`；JADX 或已接入 REA Android 工具 | 清单、类、方法、引用；Java 表达形式不等于 Kotlin 原文 |
| APK 资源 | Apktool / 格式解析器 | 解码资源、smali 和语言表；不等于完整 Android Studio 工程 |
| ELF、PE、Mach-O、原生 `.so` | 可用 Ghidra、IDA、Hopper 或 objdump；REA 原生接口可选 | 函数、汇编、伪代码、引用；间接调用与优化结果可能不完整 |
| CLI/.NET 程序集 | ILSpy 等托管工具或 REA `inspect_managed_artifact` | 元数据、IL、派生 C#；NativeAOT 改走原生路线 |
| ASAR、Electron、JS 目录 | 已有 ASAR/JS 工具或 REA `analyze_javascript_application` | 模块、imports、source map、preload/IPC 路径；先静态不执行脚本 |
| IPA、Apple `.app` | `mobile-applications.md`；包清单、plist、Mach-O | Bundle、资源、依赖和可分析代码；平台与加密状态限制须显式说明 |
| Unity / Unreal / Godot | 识别引擎版本和脚本后端后选专用工具 | 先交付识别证据与适配建议；本 Skill 不附带这些引擎的一键恢复器 |
| HAR、SAZ、PCAP | 已授权离线记录解析；REA/Wireshark 等可选 | 只描述已记录范围，不自动访问记录内 URL 或抓新流量 |
| 浏览器、Electron 或进程行为 | 用户指定目标的受控观察 | 记录具体动作与生命周期；运行观察不能从静态图中推导 |
| WASM、EVM、固件 | 核对可用工具后选 WABT、相应分析器、Binwalk/Unblob | WAT/接口候选/分区；宿主限制和缺失工具另报，不假装已支持 |

## REA 已连接时

从会话当前工具列表和 schema 发现能力，避免因仓库 main 文档包含新命令而调用旧服务不存在的接口。参考：

- 原生或归档活动目标：`open_binary`；按当前 provider 选择函数/字符串/引用分析。IDA 等 provider 不一定提供相同 overview。
- APK：`inspect_android_package`，再按类、方法与引用缩小范围。
- JS/Electron：`analyze_javascript_application`，优先摘要后选具体模块。
- Apple：已有清单 Evidence 可投影应用结构；投影是路径关系与候选桥接，不是运行时调用证明。

这些接口只在实际发布并被发现后使用。没有 REA 时不为完成简单清单强制安装它；普通源码仓库直接使用正常仓库分析工具。

## 多层应用

不要把安装包格式当作实现语言。一个 APK 可以同时包含 DEX、多个 ABI 的 `.so`、JS/Dart 产物和数据包。为每层记录输入哈希、ABI/版本及依赖，再连接有证据的边，不把“同在一个包中”写成已确认调用。

同名函数或类不能证明版本相同。版本比较先核对包、签名元数据、构建号、文件哈希与工具设置；候选对应关系需要内容或引用证据。
