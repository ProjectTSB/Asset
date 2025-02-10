#> asset:mob/0411.behemoth/tick/act/attack
#
# Mobのtick時の処理
#
# @within asset:mob/0411.behemoth/tick/act/

# 全アニメーション停止
    function asset:mob/0411.behemoth/tick/util/remove_animation_tag

# 通常攻撃
    scoreboard players set @s BF.EventTimer 0
    tag @s add BF.Skill.Attack
