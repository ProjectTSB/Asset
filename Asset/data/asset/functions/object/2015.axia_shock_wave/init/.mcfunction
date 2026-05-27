#> asset:object/2015.axia_shock_wave/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2015/init

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..35999

# TP
    execute at 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ループ処理
    scoreboard players set $2015.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2015.Temp Temporary -100
    execute at @s if score $2015.Temp Temporary matches 1.. run function asset:object/2015.axia_shock_wave/init/loop

# ループしてもダメだったらキル
    execute if score $2015.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2015.Temp Temporary
