#> asset:mob/0424.icicle_leg/tick/icicle_rain/
#
# 疑似つらら攻撃
#
# @within function asset:mob/0424.icicle_leg/tick/

#> 拡散用エンティティ
# @private
#declare tag SpreadMarker

# マーカーを召喚して拡散させる
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0.0d,0.0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] at @s run function lib:spread_entity/

# 拡散したマーカーに演出
    execute at @e[type=marker,tag=SpreadMarker,distance=..8,limit=1] run function asset:mob/0424.icicle_leg/tick/icicle_rain/vfx
