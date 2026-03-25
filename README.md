# 智能认知进化流水线 (Cognitive Evolution Pipeline)

> “珍惜每一次可验证的成果，不仅是成果本身，更宝贵的是产生成果的过程（升维）。”

## 1. 什么是认知流水线？
这是一个专为 Agent（如 `opencode`）设计的**元框架（Meta-Framework）**。它的核心目的是让 Agent 具备“自我反思、认知升维、自动封装技能”的能力。不再让 Agent 沦为一次性的搬砖工，而是成为能将每一次经验沉淀为底层基础设施的架构师。

## 2. 系统拓扑架构 (System Topology)
本仓库由“一部宪法”和“三大核心引擎”组成，实现了物理与逻辑的极致解耦：

*   📜 **宪法原典 (`docs/Recursive_Abstraction_Model.md`)：** 整个系统的第一性原理。定义了自底向上的“术、法、道”升维模型。
*   ⚙️ **归纳引擎 (`skills/recursive-abstractor`)：** **自底向上**。专吃具体的 Bug 或特定任务，提炼出高维的方法论，并交由官方装配车间固化为新技能。
*   🏗️ **演绎引擎 (`skills/concept-engineer`)：** **自顶向下**。专吃抽象的哲学理论或框架，将其物理拆解并映射为符合系统规范的底层基建。
*   🛡️ **管线架构师 (`skills/pipeline-architect`)：** **元引擎 (Meta-Skill)**。当需要升级上述三大组件时触发。它负责重建系统状态、维持依赖注入（将宪法软链接至各引擎），并安全地修改系统本身。

## 3. 安装与部署 (Installation)
在全新的系统或会话中，只需执行以下命令，即可将超维能力注入原生系统：
```bash
git clone https://github.com/imovation/cognitive-pipeline.git
cd cognitive-pipeline
chmod +x install.sh
./install.sh
```
*注：安装脚本会自动在 `~/.config/opencode/skills/` 创建指向本仓库的软链接（Symlinks），实现开发与使用的单点事实（SSOT）。*

## 4. 如何持续迭代优化 (How to Evolve)
如果你（或 Agent）想要改进这套流水线本身（例如：修改宪法、优化归纳引擎的提示词）：
1. **绝对不要**手动去改 `~/.config/opencode/skills/` 下的文件。
2. 请在对话框中直接对 Agent 说：
   > **"请读取 `cognitive-pipeline/README.md` 了解架构，然后触发 `pipeline-architect` 技能，帮我把归纳引擎的逻辑升级一下。"**
3. `pipeline-architect` 会安全地接管一切，并在本仓库内完成代码修改。
4. 修改完成后，人工执行 `git commit` 和 `git push` 保存进化成果。