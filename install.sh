#!/bin/bash
# 认知管线安装程序 (Cognitive Pipeline Installer - Clean Architecture)
# 作用：1. 将宪法依赖硬拷贝到各引擎的资源目录下（确保系统原生无缝兼容）；2. 将 Monorepo 技能挂载到系统原生目录。

set -e

REPO_DIR="$(pwd)"
REPO_SKILLS_DIR="$REPO_DIR/skills"
TARGET_CONFIG_DIR="$HOME/.config/opencode/skills"
CONSTITUTION_FILE="$REPO_DIR/docs/Recursive_Abstraction_Model.md"

echo "==== 认知流水线安装引擎 ===="
echo "目标系统配置目录: $TARGET_CONFIG_DIR"

# 1. 依赖注入：在代码仓库内部将宪法硬拷贝给需要的引擎
echo ">> [1/2] 正在进行宪法依赖注入 (Dependency Injection)..."
for SKILL_NAME in recursive-abstractor concept-engineer pipeline-architect; do
    REF_DIR="$REPO_SKILLS_DIR/$SKILL_NAME/references"
    mkdir -p "$REF_DIR"
    cp -f "$CONSTITUTION_FILE" "$REF_DIR/Recursive_Abstraction_Model.md"
    echo "   注入宪法至: $SKILL_NAME/references/"
done

# 2. 挂载软链接：确保系统识别
echo ">> [2/2] 正在挂载技能到系统原生目录..."
mkdir -p "$TARGET_CONFIG_DIR"

for SKILL_DIR in "$REPO_SKILLS_DIR"/*/; do
    SKILL_NAME=$(basename "$SKILL_DIR")
    echo "   挂载: $SKILL_NAME"
    
    # 确保清除旧数据或死链
    if [ -e "$TARGET_CONFIG_DIR/$SKILL_NAME" ] || [ -L "$TARGET_CONFIG_DIR/$SKILL_NAME" ]; then
        rm -rf "$TARGET_CONFIG_DIR/$SKILL_NAME"
    fi
    
    # 创建软链接
    ln -sfn "$SKILL_DIR" "$TARGET_CONFIG_DIR/$SKILL_NAME"
done

echo "==== 挂载完成！系统现在已拥有全维度自我迭代与降维打击能力 ===="