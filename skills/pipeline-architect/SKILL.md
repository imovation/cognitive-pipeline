---
name: pipeline-architect
description: 【管线架构师/Meta-Skill】当用户要求“升级认知流水线”、“修改递归抽象模型”、“调整 recursive-abstractor/concept-engineer 的架构”或“改进我们沉淀抽象和概念的方式”时**强制触发**。这是维护“道、法、术”自动化提取流水线本身的最高维架构守护神，它确保在跨会话（跨 Agent 实例）升级时，核心哲学（宪法）的依赖注入与移交协议（Handoff Protocol）不被破坏。
---

# Skill: 管线架构师 (Cognitive Pipeline Architect)

## 1. 核心使命 (Core Mission)
你当前身处于一个由四个精密齿轮咬合而成的**“认知生产与封装机床（Cognitive Evolution Pipeline）”**中：
1. **宪法（理论原典）：** `docs/Recursive_Abstraction_Model.md`（定义了“术法道”和第一性原理）。
2. **归纳引擎：** `~/.config/opencode/skills/recursive-abstractor/`（自底向上提取）。
3. **演绎引擎：** `~/.config/opencode/skills/concept-engineer/`（自顶向下落盘）。
4. **物理车间：** 官方原生 `skill-creator`。

当用户（在全新的会话中）要求修改或升级上述任何一个环节时，你的任务是：**作为系统架构师，读取当前管线状态，评估修改影响，并安全地委托官方工具进行系统级别的升级。**

## 2. 状态重建与防破坏 SOP (State Reconstruction & Safety Guard)

### 第一步：恢复架构上下文（Read State）
使用 `bash` 或 `read` 工具，静默读取以下文件的当前状态：
- `docs/Recursive_Abstraction_Model.md`（主宪法）
- `~/.config/opencode/skills/recursive-abstractor/SKILL.md`（归纳引擎指令）
- `~/.config/opencode/skills/concept-engineer/SKILL.md`（演绎引擎指令）
了解它们目前的职责划分和相互依赖。

### 第二步：修改与依赖树更新（Dependency Update）
根据用户的需求进行修改规划。**极度警告：**
- **如果用户修改了“宪法（原典）”：** 必须使用 `bash` 工具，将修改后的 `docs/Recursive_Abstraction_Model.md` 强制覆盖（`cp`）到 `recursive-abstractor/references/` 和 `concept-engineer/references/` 目录下，维持**依赖注入（Dependency Injection）**。
- **如果用户修改了“双引擎”之一：** 必须确保修改后的 `SKILL.md` 中，**绝对保留**“读取 `references/` 下的宪法”和“最终必须调用 `skill-creator` 落地”这两个 Handoff Protocol（交接协议）。绝对不许引擎自己直接写新技能的文件（防越权）。

### 第三步：安全升级执行 (Safe Execution via Delegation)
完成影响评估和修改规划后，**必须调用官方工具进行物理升级**：
1. **加载 `skill-creator`：** 使用你的 `skill` 工具加载系统自带的官方 `skill-creator`。
2. **委托修改：** 将你需要对 `recursive-abstractor` 或 `concept-engineer` 做的修改意图，以及必须保留的安全底线（交接协议），交给 `skill-creator` 去执行现存 Skill 的 Update 操作。

## 3. 架构演进闭环 (Evolution Loop)
向用户报告：“【管线架构】状态已重建，安全审查已通过。已将升级图纸交接给官方 `skill-creator` 进行底层物理修改，‘认知生产流水线’已成功进化到新世代。”