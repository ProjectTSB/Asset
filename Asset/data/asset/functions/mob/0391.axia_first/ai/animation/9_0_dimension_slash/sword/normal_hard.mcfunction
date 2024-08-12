#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal_hard
#
# ハード専用 ランダム拡散召喚
#
# @within function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/

# Markerを呼び出す
    execute as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] at @s run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソード召喚
    execute at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# Markerを呼び出す
    execute as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] at @s run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソード召喚
    execute at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
