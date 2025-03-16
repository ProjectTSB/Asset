#> asset:object/1044.thunder_storm/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1044/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute store result storage asset:temp Args.Num int 1 run scoreboard players get @s General.Object.Tick
    execute if score @s General.Object.Tick matches ..20 run function asset:object/1044.thunder_storm/tick/vfx/ready/m with storage asset:temp Args
    data remove storage asset:temp Args

# スコアが一定以上なら発動
    execute if score @s General.Object.Tick matches 21.. run function asset:object/1044.thunder_storm/tick/cast
