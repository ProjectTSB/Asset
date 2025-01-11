#> asset:object/1078.gun/tick/shot/
#
#
#
# @within function asset:object/1078.gun/tick/

#> tag
# @private
    #declare tag SpreadMarker


# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.3

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.5,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes positioned ^ ^ ^0.4 run function asset:object/1078.gun/tick/shot/bullet_rec

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.3 1.6 0
    playsound tsb_sounds:masket_shot neutral @a ~ ~ ~ 0.2 1
    particle minecraft:wax_on ^ ^ ^3 0 0 0 50 2 normal
# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10,limit=1]
    tag @s remove Landing
