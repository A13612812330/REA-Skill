# Slotbound Mod 参考入口

本机 Demo 的资源与脚本恢复材料已就绪。这里的源码是从发行字节码恢复的文本，不包含开发者原始注释、工程历史，也尚未通过整局游玩验证。

## 现在可以使用的内容

| 内容 | 位置 | 可用范围 |
| --- | --- | --- |
| 当前版本恢复源码 | [recovered-source](recovered-source) | 55 份 Lua 全部可读且语法通过，适合研究和修改副本 |
| 数值总表 | [constants.json](data/constants.json) | 旋转价格、符号权重、成长等原包数据 |
| 技能 | [skills.csv](data/skills.csv)、[skill.json](data/skill.json) | 125 个定义，中文说明与参数；技能函数看 Lua |
| 随机词条 | [random-options.csv](data/random-options.csv) | 32 项，含变体与权重 |
| 觉醒 | [awakening-stages.csv](data/awakening-stages.csv) | 含旧版本共 1,645 行，需按版本筛选 |
| 单位动画 | [unit-sprites.csv](data/unit-sprites.csv) | 114 项动画配置，含路径、帧尺寸 |
| 美术 | [图片总览](preview/assets-contact-sheet.jpg)、[原图](extracted/game-files/src/sprites) | 1,215 张 PNG，可直接查看 |
| 音频 | [audio](extracted/game-files/src/audio) | 64 个 WAV/MP3/OGG，目录另含脚本字节码 |
| 中文文本 | [chinese.json](extracted/game-files/src/language/chinese.json) | 5,619 条 |
| 原始依据 | [反汇编](bytecode-disassembly)、[原包文件](extracted/game-files) | 对照反编译疑点；原包 .lua 是字节码 |

JSON 中 `function` 表示函数占位，完整函数实现需看 Lua；`table-reference` 表示循环引用，不是缺失配置。JSON/CSV 是分析导出表，修改它们不会自动修改游戏。

## 源码阅读顺序

1. [main.lua](recovered-source/main.lua)：启动和主循环。
2. [constants.lua](recovered-source/src/data/constants.lua)：优先研究价格、权重与成长参数。
3. [slot.lua](recovered-source/src/game/slot.lua)：转轮、中奖线、连锁、保护格。
4. [power.lua](recovered-source/src/game/power.lua)：战力与成长公式。
5. [battlefield.lua](recovered-source/src/game/battlefield.lua)、[combat.lua](recovered-source/src/game/combat.lua)：战斗流程。
6. [skill.lua](recovered-source/src/data/skill.lua)、[unit_abilities.lua](recovered-source/src/game/unit_abilities.lua)：技能配置和运行逻辑。
7. [assets.lua](recovered-source/src/data/assets.lua)、[asset2.lua](recovered-source/src/data/asset2.lua)：素材加载和动画配置。

## 验证程度

- 原包 1,378 个文件完整提取，图片校验和文件哈希复核已通过。
- 55/55 份恢复 Lua 通过原游戏 LuaJIT 的编译检查，8 份做过生成局部变量整理。
- 9 个数据模块返回表与原字节码一致，函数仅按类型比较。
- 战力 5 个函数的 180 组输入、大奖判定 35 组输入与原字节码一致。
- 尚未验证完整游戏运行、存档兼容、全部技能效果和 Mod 加载方式。

逐项证据：[源码编译](analysis/recovered-source-quality.json)、[行为对照](analysis/recovered-comparison.json)。

## GitHub 参考

`external-reference/SlotboundLua` 单独保存公共仓库 `liusu239113/SlotboundLua` 的 46 份 Lua 和 2 份说明文件。固定提交为 `57492bbe9c273d2c3e13387024436119c886d341`，各文件已核对 Git blob 校验值。出处和校验值见 [provenance.json](external-reference/provenance.json)。

该仓库官方身份未确认，许可元数据为空，脚本有生成变量名等反编译痕迹，不能认定为开发者原始源码。46 份中 44 份语法通过；其技能定义为 48 个，本机为 125 个；常量和模块结构也不同。详细对比见 [public-reference-comparison.json](analysis/public-reference-comparison.json)。

将其作为补充阅读材料，本机恢复结果仍以 `recovered-source` 为准。未获取上游的大体积 recovered.love、素材和移植版本。

## Mod 的下一步

建议先选择一个范围小且可观察的修改，例如旋转价格、某个技能冷却或替换一张贴图，再在独立运行副本中验证。当前没有改动原安装文件，也没有启动游戏或写存档；不保证直接替换发行文件就能生效。
