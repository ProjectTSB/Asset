#> asset:artifact/1048.thunder_storm/trigger/5.tick
#
# スケジュールによるTick処理
#
# @within function asset:artifact/1048.thunder_storm/trigger/4.schedule

# スコア上昇 (スコアが未設定なら設定)
    execute unless entity @s[scores={T4.Tick=0..}] run scoreboard players set @s T4.Tick 0
    scoreboard players add @s T4.Tick 1

# 演出
    execute store result storage asset:temp T4.Num int 1 run scoreboard players get @s T4.Tick
    execute if score @s T4.Tick matches ..20 run function asset:artifact/1048.thunder_storm/trigger/vfx/m with storage asset:temp T4
    data remove storage asset:temp T4.Num

# スコアが一定以上なら発動
    execute if score @s T4.Tick matches 21.. run function asset:artifact/1048.thunder_storm/trigger/6.cast
