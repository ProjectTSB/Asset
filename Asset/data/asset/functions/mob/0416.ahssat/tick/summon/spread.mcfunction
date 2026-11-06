#> asset:mob/0416.ahssat/tick/summon/spread
#
# 拡散
#
# @within function asset:mob/0416.ahssat/tick/

#> private
# @private
    #declare tag BK.Marker

# Markerを召喚する
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["BK.Marker"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0,0],[2d,2d]]
    execute as @e[type=marker,tag=BK.Marker,distance=..30] at @s run function lib:spread_entity/

# 配置
    execute at @e[type=marker,tag=BK.Marker,distance=..30] if block ~ ~ ~ #lib:no_collision/ run function asset:mob/0416.ahssat/tick/summon/summon

# マーカーを戻してあげる
    kill @e[type=marker,tag=BK.Marker,distance=..30]

# スコアリセット
    execute store result score @s General.Mob.Tick run random value 0..20
