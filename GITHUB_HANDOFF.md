# REA-Skill 仓库交接

## 定位与结构

仓库：`A13612812330/REA-Skill`，私有，原名 `ReverseGmae-Slotbound`。2026-10-19 按用户确认，将通用逆向/反编译 Skill 提升为仓库主体，Slotbound 材料归入案例。

- 统一入口：`skills/rea-skill/SKILL.md`。
- 兼容入口：`skills/luajit-game-recovery/SKILL.md`，继续保留既有功能。
- 案例根目录：`cases/slotbound-demo/`，其下的 `tools/`、产物与报告保持相对位置。
- 案例上传范围、第三方材料与限制：[案例交接](cases/slotbound-demo/GITHUB_HANDOFF.md)。

本机检出目录暂保留 `E:\新建文件夹\Codex-GPT\games\Slotbound-Mod`，避免额外改变外部引用；GitHub 仓库名称与本机文件夹名称不要求相同。

## 换机

```powershell
gh repo clone A13612812330/REA-Skill
Set-Location REA-Skill
python -B -m unittest discover -s skills/rea-skill/scripts -p "test_*.py"
python -B skills/rea-skill/scripts/preflight.py --project cases/slotbound-demo
```

安装入口保持 `skills/rea-skill`；案例重放命令必须先进入 `cases/slotbound-demo`。克隆不安装 Skill、分析器、运行库或 MCP；也不授予运行目标、读取私人数据或访问服务端的权限。

其他本机克隆可将 origin 改为 `https://github.com/A13612812330/REA-Skill.git`。依赖旧仓库 URL 的外部调用方需分别检查；本次不修改无关仓库或系统配置。

## 证据与发布

原 `analysis/` 等案例目录已移入 `cases/slotbound-demo/`。历史 JSON、CSV、反汇编、恢复文本及原始资源中的路径属于采集时记录，不批量改写。当前文档链接和路径说明已按新结构调整。

上传前在仓库根目录审查：

```powershell
git status --short
python -B cases/slotbound-demo/tools/audit_upload.py
git diff --cached --check
```

上传审计扫描整个仓库索引，报告写入案例 `analysis/upload-audit.json`。它只检查常见凭据特征、发布排除项和部分原始字节保留，不等于完整安全、许可或版权审查。

默认分支目前为 `feature/initial-analysis`；本次在该已有非 `main/master` 分支提交，不强推、不清理历史、不自动更换默认分支。后续改为 `main` 或公开发布需另行确认。

新应用的研究材料默认独立保存；只有经授权、明确发布范围后才加入 `cases/`。不要把 Slotbound 的固定 EXE 哈希、容器偏移或 AST 修正规则推广到其他应用。
