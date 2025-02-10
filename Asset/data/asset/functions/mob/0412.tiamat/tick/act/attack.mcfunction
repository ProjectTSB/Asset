#> asset:mob/0412.tiamat/tick/act/attack
#
# Mobのtick時の処理
#
# @within asset:mob/0412.tiamat/tick/act/

# 全アニメーション停止
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# 通常攻撃
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.Attack
