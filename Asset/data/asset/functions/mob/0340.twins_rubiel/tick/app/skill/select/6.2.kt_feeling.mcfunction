#> asset:mob/0340.twins_rubiel/tick/app/skill/select/6.2.kt_feeling
#
# 使用するスキルを決定する 刀装備 気分に任せた攻撃
# 実際はカウンター増加値がランダムな固定行動
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt

# ランダム
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const
# カウンター増加
    scoreboard players operation @s 9G.ActionCount.Feeling += $Random Temporary

# 選択
    execute if score @s 9G.ActionCount.Feeling matches ..1 run tag @s add 9G.Skill.Kt.JumpSlash
    execute if score @s 9G.ActionCount.Feeling matches 2 run tag @s add 9G.Skill.Kt.Warp
    execute if score @s 9G.ActionCount.Feeling matches 3 run tag @s add 9G.Skill.Kt.Sheathe
    execute if score @s 9G.ActionCount.Feeling matches 4 run tag @s add 9G.Skill.Kt.Moveslash
    execute if score @s 9G.ActionCount.Feeling matches 5 run tag @s add 9G.Skill.Kt.JumpSlash
    execute if score @s 9G.ActionCount.Feeling matches 6 run tag @s add 9G.Skill.Kt.Throw.Start
    execute if score @s 9G.ActionCount.Feeling matches 7.. run tag @s add 9G.Skill.Kt.Sheathe

# リセット
    execute if score @s 9G.ActionCount.Feeling matches 7.. run scoreboard players set @s 9G.ActionCount.Feeling 0
    scoreboard players reset $Random Temporary
