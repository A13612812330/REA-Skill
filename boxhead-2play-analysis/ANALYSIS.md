# BOXHEAD - 2PLAY（RGM-975）只读分析记录

## 范围

- 目标页面：`https://rgm.games/game/975`
- 研究目的：为自有代码复刻玩法、结构和可观察数值提供证据。
- 已授权范围：只读页面、公开 API 和浏览器实际下发的客户端资源检查。
- 不包含：登录后内容、绕过访问控制、服务端源码、账号数据、破解保护、直接改包或重发布原资源。

## 已验证证据

### 页面与游戏身份

- 页面标题：`僵尸危机3在线玩（BOXHEAD - 2PLAY） - Flash | 怀旧游戏博物馆`
- 英文名：`BOXHEAD - 2PLAY`
- 中文名：`僵尸危机3`
- RGM 编号：`975`
- 年份：`2007`
- 开发者：`Sean Cooper`
- 发行商：`Crazy Monkey Games`
- 平台：`Flash`

### API 元数据

公开接口：

`https://rgm.games/api/games/975`

返回的关键字段：

```json
{
  "id": 975,
  "rom": "[{\"type\":\"默认\",\"path\":\"/roms/975.swf\",\"fileSize\":\"1.85 MB\"}]",
  "platform": 7,
  "year": 2007,
  "dev": "Sean Cooper",
  "publisher": "Crazy Monkey Games",
  "compressed": 1,
  "mobileoptimized": 1,
  "additional_hint": "单人模式下使用【方向键】移动角色，【空格】射击，【数字键】切换武器；多人模式下可通过OPTION选项查看或切换控制键。"
}
```

### 播放器与交互

- 页面实际显示为 Ruffle Flash 播放器。
- 页面可见键盘映射按钮，包括方向键、空格、数字/字母键和全键盘入口。
- 页面提示清除浏览器缓存可能导致存档丢失，说明运行时可能使用浏览器本地存储或模拟存档。
- 前端脚本中确认了 Ruffle 逻辑：对 `.swf` ROM 构造直接 SWF 加载路径；多文件 Flash 包另走 `/roms/flash/`。

## 客户端文件获取结果

API 给出的直接路径：

`https://rgm.games/roms/975.swf`

在本次环境中使用普通 HTTPS GET、带页面 Referer、以及 Flash `Accept` 头请求，均返回：

- HTTP `404 Not Found`
- 未保存到本地的 SWF 文件

因此当前不能对 `975.swf` 做哈希、字节码、资源或 ActionScript 静态分析。API 的 `rom` 字段证明了站点的公开元数据路径，但不能单独证明文件当前可直接下载。

### 官方转载包核验（2026-10-22）

已核验 Crazy Monkey Games 的历史“Games for your website”页面：

`https://www.crazymonkeygames.com/download.php?rank=name`

页面源码仍列出：

`Boxhead 2Play Rooms -> https://www.crazymonkeygames.com/downloads/boxhead2play.zip`

但对该下载地址进行普通 HTTPS 请求，当前结果为：

- HTTP `404 Not Found`
- 未获得 ZIP 文件
- 未计算 ZIP/SWF 哈希

因此可以确认“历史官方转载入口存在过”，但不能确认该文件现在仍由官方服务器提供，也不能宣称已取得完整客户端包。

## 工具状态

当前已发现：

- 可用：Java 17、Python 3.11、Node.js
- 未发现：FFDec、SWFTools、swfmill、RABCDAsm、Ruffle CLI、7-Zip/Unzip

## 结论

1. 该样本是 2007 年 Flash/SWF 游戏，不是现代 HTML5/JS 游戏。
2. 通过公开页面和 API 已能确认游戏身份、输入提示、播放器类型和 ROM 路径。
3. 官方历史转载包页面仍列出 `boxhead2play.zip`，但当前下载地址返回 404；RGM 的公开 ROM 路径也返回 404。
4. 当前没有获得可分析的 SWF/ZIP，因此不能声称已完成“全数据获取”或解包。
5. 复刻工作可以先按已验证的黑盒行为开展：俯视角移动、射击、武器切换、单人/多人入口、Ruffle 页面显示的控制映射和存档提示。
6. 原始 SWF 若后续在用户本地浏览器缓存或获得合法文件来源，应单独记录文件来源、SHA-256 和授权边界，再做离线静态分析；不应把分析产物直接当作开发者原始工程源码。

## 下一步建议

### 路线 A：继续获取已授权客户端文件

用户在自己可正常运行页面的浏览器中，通过开发者工具 Network 记录实际成功的 SWF 请求，导出时删除 Cookie、Authorization、令牌等敏感头，再提供脱敏 HAR 或用户自行保存的 SWF 文件路径。

### 路线 B：先做黑盒复刻

依据公开页面、实际游玩录屏和用户观察，建立自有 Phaser 3/TypeScript 原型；先实现移动、瞄准/射击、武器槽、僵尸生成、碰撞、波次和存档接口，再替换为原创素材与数值。

