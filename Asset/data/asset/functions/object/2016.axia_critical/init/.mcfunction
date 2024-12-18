#> asset:object/2016.axia_critical/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2016/init

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
    
# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/

# TP
    execute at 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ループ処理
    scoreboard players set $2016.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $2016.Temp Temporary -100
    execute at @s if score $2016.Temp Temporary matches 1.. run function asset:object/2016.axia_critical/init/loop

# ループしてもダメだったらキル
    execute if score $2016.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2016.Temp Temporary
