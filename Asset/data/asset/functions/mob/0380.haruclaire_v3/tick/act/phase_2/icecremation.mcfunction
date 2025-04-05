#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
#
# アイスクリメーション
#
# @within asset:mob/0380.haruclaire_v3/tick/act/phase_2/

# 初回使用時はお披露目
    execute if entity @s[tag=!AK.Skill.IceCremation.First.Used] run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation_first

# それ以外は順番に使用する
    scoreboard players add @s AK.IcecremationCount 1
    execute if score @s AK.IcecremationCount matches 4.. run scoreboard players set @s AK.IcecremationCount 0
    execute if score @s AK.IcecremationCount matches 0 run tag @s add AK.Skill.IceCremation.Dash
    execute if score @s AK.IcecremationCount matches 1 run tag @s add AK.Skill.IceCremation.FourCircle
    execute if score @s AK.IcecremationCount matches 2 run tag @s add AK.Skill.IceCremation.Cross
    execute if score @s AK.IcecremationCount matches 3 run tag @s add AK.Skill.IceCremation.CircleLine
