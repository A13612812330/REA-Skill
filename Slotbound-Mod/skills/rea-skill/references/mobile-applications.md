# APK / Android 与 IPA / iOS 操作

## 接收什么

优先让用户提供已获授权的本地 APK、DEX、IPA 或 `.app` 路径，并说明要看源码结构、某个功能、数值、资源还是 Mod。不要要求其提供账号密码、签名私钥或真实用户数据库。

只有应用名称、没有文件时，先确定平台及合法样本来源。不要根据名称擅自下载来路不明安装包、连接手机或获取其他应用数据。

建议每个新目标单独建项目，例如 `E:\新建文件夹\Codex-GPT\tools\<应用名>-analysis`；先按当前项目确认规则获得范围确认，别把 APK 产物混入 Slotbound 研究库。目录名只是建议，不是已经创建。

## Android：先离线

1. 记录原包大小和 SHA-256，保留只读输入。列归档成员但不运行应用；记录单 APK、split APK 集合、APKS/XAPK/APKM 或 AAB 的实际格式。
2. 解码 manifest，整理包名、版本、SDK、组件、权限、启动入口；权限声明不等于实际使用。证书/签名需单独验证，不能从 manifest 或解包成功推导包真实性。
3. 清点全部 `classes*.dex`、`lib/<abi>/*.so`、`assets/`、`res/` 及额外数据包。结合完整文件名、元数据与实际解析判断技术栈，不靠一个子串断定引擎。
4. 按用户问题选入口，追踪类/方法/资源 ID；相关方法反编译失败时保留 DEX/smali 和失败记录，不拿不相关输出补齐。
5. 输出可读文本、资源及清单、证据报告。静态 URL 仅作线索，不主动请求服务。

### 已安装工具的示例

以下命令只供确认工具和输出目录后选择执行，不是一键安装/重放脚本。把样例输入换成用户实际授权文件，输出使用全新目录；从本机 help 确认语法。解码/反编译写输出，可能另写缓存，应纳入执行说明。

```powershell
Get-FileHash -Algorithm SHA256 -LiteralPath 'E:\authorized\Example.apk'
apkanalyzer apk summary 'E:\authorized\Example.apk'
apkanalyzer manifest print 'E:\authorized\Example.apk'
jadx -d 'E:\analysis\Example\decompiled-jadx' 'E:\authorized\Example.apk'
apktool d 'E:\authorized\Example.apk' -o 'E:\analysis\Example\decoded-apktool'
```

`apkanalyzer` 属于 Android SDK 工具；JADX 与 REA 的 headless JADX bridge 是不同发行物，不把独立 JADX 可运行当作 REA bridge 已就绪。Apktool 解码资源/smali，JADX 恢复 Java 表达形式；都不是原 Android Studio 工程恢复承诺。不要禁用 ZIP/XML 安全检查来处理解析失败。

若需要确认签名且 SDK Build Tools 可用，可在授权范围使用其 `apksigner verify --print-certs`，记录工具结果；证书指纹相同本身不证明发布来源可信。

### 已接入 REA 时

只有实际工具列表支持时，依次选择 `inspect_android_package`、`search_android_classes`、`inspect_android_class`、`inspect_android_method` 与 `trace_android_references`。

先取得类的真实名称与方法签名；重载索引从当前样本与引擎结果选取，不跨构建沿用。工具生成的别名与原 DEX 描述符分开记。原生/抽象方法没有 Java 方法体时转向正确层，不填成反编译完整。

摘要与保留 Evidence 支持须从 schema 发现，分页保留 parent ID 和覆盖标记。入向静态引用不是实际调用轨迹，查询为空也不排除反射、动态加载或 JNI。

本次参考提交的 REA Android 路线需要完整 JDK 与匹配的 headless JADX 发行物；主机/发布版边界可能不同。核对实际版本和上游固定元数据，不自动下载 JAR 或设置环境。该路线不等于原生 `.so`、完整资源表、签名验证或动态执行。

### 包内不同技术栈

| 发现 | 下一步 | 不能承诺 |
| --- | --- | --- |
| DEX 中 Java/Kotlin 编译代码 | JADX + 原 DEX/smali 对照 | 恢复原注释、全部名称或原 Kotlin 文本 |
| JNI 与 ABI 分组 `.so` | Ghidra/IDA 等分析正确架构，再核实注册/调用关系 | Java 反编译已覆盖原生算法 |
| Unity Mono / IL2CPP 线索 | 核对引擎版本、程序集或元数据再选专项工具 | 通用 APK 流程已恢复完整 Unity 工程 |
| Flutter/Dart AOT 线索 | 先核对引擎、snapshot 与库版本，再评估专用分析 | JADX 能直接还原 Dart 工程 |
| React Native / Hermes / JS | 检查 bundle/字节码版本与可用解析器 | 看到 JS 框架库就等于业务 bundle 完整可读 |
| Lua / LuaJIT | 核对字节码类型后加载本 Skill LuaJIT 流程 | Slotbound 的容器偏移和 AST 修复适用于此包 |
| 壳、动态下发、缺失资源或强混淆 | 报告缺口，考虑用户提供调试包、映射或授权运行证据 | 静态失败就是内容不存在，或可自动完整脱壳 |

### 分包与 AAB

base APK 可能不含目标 ABI、语言、密度或动态功能。保存分包清单及各自哈希/版本，注明当前缺失的模块；不要把单个 base 当完整应用。AAB 是发布 bundle，不是可直接等同 APK 的安装包。

独立 JADX 某版本可能接受 AAB/分包容器，但不能由此推导 REA APK 接口也支持。先查选定工具版本。需要 bundletool 生成 APK 集合或处理设备规格时，先确认工具、写入目录和签名需求；不自动索取密钥或安装到设备。

## Android：需要运行验证时

静态结果不足才提出单独动态阶段。确认用户指定的测试设备/模拟器、序列号、目标包、测试账户、动作和网络范围。

- adb 查询也可能启动本地 adb server；先说明，并用明确设备选择避免选中其他手机。
- 安装、启动、调试、注入、日志读取、截图、数据导出和卸载都有副作用，逐项纳入范围。默认不 root、不连接真实账户、不清空应用数据。
- 实测记录“执行动作 -> 时间范围 -> 可见结果 -> 对应静态证据”。保护 logcat、网络记录中的 token、设备标识和个人信息。
- Frida 等仅在确有需求且工具/目标/动作获准时使用，不因安装了 Skill 就自动注入或绕过校验。
- 网络观察不自动扩展到登录、支付、服务端探测或证书校验修改；优先用户提供的脱敏离线记录或自有测试构建。

## iOS / macOS

IPA 与 APK 不是同一路线。先检查 `Payload/*.app`、`Info.plist`、Frameworks、资源和 Mach-O 架构；macOS `.app` 可能使用 `Contents/` 布局。用结构化 plist 解析器，不直接把二进制 plist 当文本。

已有 REA 清单投影只描述 Bundle、组件路径和候选关联，不等于 plist 语义解析、代码签名验证或运行观察。需要时选择实际可用的 plist/签名和原生分析工具。

原生代码可分析范围取决于符号、优化、混淆、加密状态与工具支持。仅分析用户合法提供且可读的样本；遇到加密内容先记录限制，优先请求自有未加密测试构建，不默认越狱、脱壳或绕过分发保护。

Windows 可进行部分归档、plist 和原生静态检查，但不能据此声称可运行 iOS App。iOS 动态验证通常需要适合的 Apple 开发环境、设备/模拟器、签名及用户授权，按实际环境评估，不承诺 Windows 一键执行。

## 用户调用模板

安装本 Skill 后可直接使用 `$rea-skill`；未安装时让代理读取本目录 `SKILL.md`，不用假装全局已发现该名称。

```text
使用 rea-skill 分析我有权研究的 APK：
文件：<APK绝对路径>
目标：查看可恢复代码、资源，并研究<具体功能>
输出：<独立分析目录>
先离线分析；不要安装/运行 App、连接设备或访问服务端。
缺少工具先列出，不自动安装。报告已恢复、失败与未验证部分。
```

只有已安装 App 时提供平台、应用名/包名及允许的设备操作；iOS 则提供 IPA 或 `.app` 路径。客户端材料不能恢复未交付的服务端源码。

工具来源与本轮核对范围见 `sources.md`。本 Skill 编写期间未运行真实 APK/IPA、连接设备或验证上述移动端路线端到端可用。
