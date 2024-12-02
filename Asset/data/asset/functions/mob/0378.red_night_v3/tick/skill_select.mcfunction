#> asset:mob/0378.red_knight_v3/tick/skill_select
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/

# ランダム
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $5 Const

# デバッグスキル固定
    #scoreboard players set $Random Temporary 3

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AI.Skill01
    execute if score $Random Temporary matches 1 run tag @s add AI.Skill02
    execute if score $Random Temporary matches 2 run tag @s add AI.Skill03
    execute if score $Random Temporary matches 3 run tag @s add AI.Skill04
    execute if score $Random Temporary matches 4 run tag @s add AI.Skill05



# リセット
    scoreboard players reset $Random Temporary
