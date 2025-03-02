#> asset:mob/0201.burnt_out_dream/tick/skill_select
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..1
# デバッグのコマンド
    #scoreboard players set $Random Temporary 0

# 最寄りのプレイヤーが自分を直視している場合、CanStepを付与にしてサイドステップに移行することがある
    execute at @p[gamemode=!spectator] positioned ^ ^ ^1 if entity @s[distance=..2] run tag @s add 5L.CanStep
    execute at @p[gamemode=!spectator] positioned ^ ^ ^2 if entity @s[distance=..2] run tag @s add 5L.CanStep
    execute at @p[gamemode=!spectator] positioned ^ ^ ^3 if entity @s[distance=..2] run tag @s add 5L.CanStep

    execute if predicate lib:random_pass_per/40 if entity @s[tag=5L.CanStep] run scoreboard players set $Random Temporary 99

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 5L.Sword
    execute if score $Random Temporary matches 1 run tag @s add 5L.Arrow
    execute if score $Random Temporary matches 99 run tag @s add 5L.Step
# リセット
    scoreboard players reset $Random Temporary
    tag @s remove 5L.CanStep
