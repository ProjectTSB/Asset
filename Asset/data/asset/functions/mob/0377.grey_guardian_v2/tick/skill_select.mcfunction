#> asset:mob/0377.grey_guardian_v2/tick/skill_select
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/

# ランダム
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $5 Const

# デバッグスキル固定
    #scoreboard players set $Random Temporary 3

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AH.Skill01
    execute if score $Random Temporary matches 1 run tag @s add AH.Skill02
    execute if score $Random Temporary matches 2 run tag @s add AH.Skill03
    execute if score $Random Temporary matches 3 run tag @s add AH.Skill04
    execute if score $Random Temporary matches 4 run tag @s add AH.Skill05



# リセット
    scoreboard players reset $Random Temporary
