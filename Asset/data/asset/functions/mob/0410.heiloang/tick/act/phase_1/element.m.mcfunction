#> asset:mob/0410.heiloang/tick/act/phase_1/element.m
#
# フェーズ1
#
# @within
#   asset:mob/0410.heiloang/tick/act/phase_1/
#   asset:mob/0410.heiloang/tick/act/phase_2/

# 3属性技
    $execute if score @s BE.Ehd.Fire matches $(Count) run tag @s add BE.Skill.Hellfire
    $execute if score @s BE.Ehd.Water matches $(Count) run tag @s add BE.Skill.Adamant
    $execute if score @s BE.Ehd.Thunder matches $(Count) run tag @s add BE.Skill.Blitz
