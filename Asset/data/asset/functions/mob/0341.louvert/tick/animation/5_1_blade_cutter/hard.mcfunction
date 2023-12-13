#> asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/hard
#
# ハード処理
#
# @within function asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/flame_damage

# Markerを呼び出す
    execute at @e[type=marker,tag=9H.SoulBladeLocater,distance=..64] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルクエイク召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute at @e[type=marker,tag=9H.FireBladeLocater,distance=..64] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルクエイク召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Markerを呼び出す
    execute at @e[type=marker,tag=9H.FireBladeLocater,distance=..64] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルクエイク召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/10.soul_quake

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0