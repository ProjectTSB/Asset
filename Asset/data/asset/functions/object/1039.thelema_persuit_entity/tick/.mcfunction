#> asset:object/1039.thelema_persuit_entity/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1039/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 位置をずらして実行
    execute positioned ^ ^5 ^-1 run function asset:object/1039.thelema_persuit_entity/tick/set_summon_pos

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]
