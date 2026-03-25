#!/bin/bash
# 认知管线安装程序 (Cognitive Pipeline Installer)
# 作用：将当前 Monorepo 中的高维认知技能无缝注入到系统原生目录中。

set -e

REPO_SKILLS_DIR="$(pwd)/skills"
TARGET_CONFIG_DIR="$HOME/.config/opencode/skills"

echo "==== 认知流水线安装引擎 ===="
echo "目标系统配置目录: $TARGET_CONFIG_DIR"

# 确保系统目录存在
mkdir -p "$TARGET_CONFIG_DIR"

# 注入核心技能
for SKILL_DIR in "$REPO_SKILLS_DIR"/*/; do
    SKILL_NAME=$(basename "$SKILL_DIR")
    echo ">> 正在挂载技能: $SKILL_NAME"
    
    # 删除如果存在同名的真实目录或失效的软链接
    if [ -e "$TARGET_CONFIG_DIR/$SKILL_NAME" ] || [ -L "$TARGET_CONFIG_DIR/$SKILL_NAME" ]; then
        rm -rf "$TARGET_CONFIG_DIR/$SKILL_NAME"
    fi
    
    # 创建软链接
    ln -sfn "$SKILL_DIR" "$TARGET_CONFIG_DIR/$SKILL_NAME"
done

echo "==== 挂载完成！系统现在已拥有自我迭代与降维打击能力 ===="