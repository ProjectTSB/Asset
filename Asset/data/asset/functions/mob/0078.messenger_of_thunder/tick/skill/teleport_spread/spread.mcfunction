#> asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/spread
#
# 拡散テレポートする
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/

#> Private
# @private
    #declare tag SpreadMarker

# Markerを先に拡散させ、拡散後の位置が安全ならテレポートする
# 安全でなければ演出もキャンセルさせるためにreturnする

# 拡散用Markerを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..15] at @s run function lib:spread_entity/

# 拡散後の位置に足場がなければMarkerを消してreturnする
    execute at @e[type=marker,tag=SpreadMarker,distance=..15] if block ~ ~-1 ~ #lib:no_collision/without_fluid run return run kill @e[type=marker,tag=SpreadMarker,distance=..0.01]

# 拡散後の位置に足場があればワープ
    execute at @e[type=marker,tag=SpreadMarker,distance=..15] unless block ~ ~-1 ~ #lib:no_collision/without_fluid run tp @s ~ ~ ~

# 演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 0.5 2 0

# 拡散用Markerを消す
    kill @e[type=marker,tag=SpreadMarker,distance=..15]
