# SlotboundLua

SlotBound（命运槽界）— 一个 LÖVE2D 老虎机 roguelike 游戏的 Lua 源码仓库，以及 TapTap/SCE（星火编辑器 / UrhoX 引擎）竖屏中文版移植。

## 目录结构

```
SlotboundLua/
├── README.md                     # 本文件
│
├── contents/                     # 【原始 LÖVE2D 源码】
│   ├── main.lua                  #   LÖVE2D 入口
│   ├── conf.lua                  #   LÖVE2D 配置
│   ├── information.md            #   游戏设计说明
│   └── src/                      #   按 data/game/ui/audio 分层的源码
│       ├── data/                 #     常量、技能、语言、随机池
│       ├── game/                 #     战场、核心、物品、后处理、隐藏概率
│       ├── ui/                   #     UI 绘制
│       └── audio/                #     程序化音频
│
├── tools/                        # 【原始工具】love 解包等
├── Slotbound.recovered.love      # 原始解包得到的 .love 包
│
└── taptap-port/                  # 【TapTap / SCE / UrhoX 竖屏中文版移植】
    ├── README.md                 #   移植版本的架构文档（AI 阅读入口）
    ├── scripts/                  #   游戏 Lua 源码（5 个文件，MVC 架构）
    │   ├── main.lua              #     入口：场景/相机/UI/音频/事件总线
    │   ├── Data.lua              #     静态配置数据库（技能/印记/天赋/核心/商店/升级/波次）
    │   ├── GameModel.lua         #     游戏状态机 + 全部玩法逻辑（Model 层）
    │   ├── Renderer.lua          #     NanoVG 渲染层（View 层）+ 动作分发
    │   └── Save.lua              #     本地存档（元进度：源石、永久升级）
    ├── assets/                   #   美术/音频资源
    │   ├── Slotbound/            #     从原版 .love 解包移植的 842 张 PNG + 原版字体
    │   └── Audio/New/            #     AI 重新生成的 SFX（15）+ BGM（5），替换原版
    └── .project/project.json     #   SCE 工程配置模板
```

## 两个版本的关系

| 维度 | `contents/` 原版 | `taptap-port/` 移植版 |
|------|-----------------|----------------------|
| 引擎 | LÖVE2D 11.x | TapTap 星火编辑器（UrhoX 引擎） |
| 屏幕方向 | 横屏 | **竖屏**（720×1280 设计分辨率） |
| 语言 | 英文 | **简体中文** |
| 渲染 | LÖVE2D 图形 API | NanoVG 矢量 + 纹理 |
| 音频 | 程序化合成 + 原音频 | **AI 重新生成**的 15 SFX + 5 BGM |
| 代码组织 | 多文件 `src/data|game|ui|audio/` | 5 个文件 MVC（Data/GameModel/Renderer/main/Save） |
| 玩法内容 | 基准 | **1:1 还原** 14 技能 / 32 印记×5 等级 / 22 天赋 / 24 核心 / 20 商店物品 / 28 永久升级 |

## 给 AI 助手的提示

- 阅读移植版本请从 `taptap-port/README.md` 开始，它包含架构、事件契约、关键数据表、陷阱提示。
- 不要修改引擎只读目录（`engine-docs/`、`urhox-libs/`、`.emmylua/` 等），那些是 SCE 工具链的，不会提交到本仓库。
- 移植版本的设计分辨率为 **360×640**，渲染时由 NanoVG CONTAIN 缩放至屏幕。
