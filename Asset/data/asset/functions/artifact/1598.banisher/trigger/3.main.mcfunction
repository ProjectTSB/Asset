#> asset:artifact/1598.banisher/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1598.banisher/trigger/2.check_condition

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.8
    data modify storage lib: Argument.Spread set value 0.1
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 発射
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] feet anchored eyes positioned ^-0.14 ^-0.05 ^0.35 run function asset:artifact/1598.banisher/trigger/rec

# 演出
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.0 0.7
    playsound entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.75
    playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 1.0 2.0
    # 特殊vfx
        data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:stick",Count:1b}
        data modify storage api: Argument.FieldOverride.Scale set value [0.5f,0.5f,0.0f]
        data modify storage api: Argument.FieldOverride.Frames set value [20640,20641,20642,20643,20644,20645,20646]
        data modify storage api: Argument.FieldOverride.LockRotation set value false
        data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value {axis:[1.0f, 0.0f, 0.0f], angle:1.577f}
        data modify storage api: Argument.ID set value 2001
        execute anchored eyes positioned ^-0.14 ^-0.05 ^0.35 run function api:object/summon

# 消費時の処理
    function asset:artifact/1598.banisher/trigger/reload

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..1,limit=1]
    data remove storage lib: Argument
