#> asset:object/2170.astro_teleport/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2170/init

# ブロックの直上に来るようにループ処理を行う
    scoreboard players set $2170.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.25 ~ #lib:no_collision/ run scoreboard players set $2170.Temp Temporary -100
    execute if score $2170.Temp Temporary matches 1.. run function asset:object/2170.astro_teleport/init/loop

# ループしてもダメだったらキル
    execute if score $2170.Temp Temporary matches 0 run kill @s

# TP
    execute at @s run tp @s ~ ~ ~ ~ 0

# リセット
    scoreboard players reset $2170.Temp Temporary

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16776960,Scale:[5f,5f,0.01f],Tick:30}

# 召喚
    data modify storage api: Argument.ID set value 2063
    execute at @s run function api:object/summon
