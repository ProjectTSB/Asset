#> asset:artifact/0758.sina_tk/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0758.sina_tk/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag SpreadMarker

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 759
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 演出
    playsound block.bamboo.place player @a ~ ~ ~ 0.4 0.7 0

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.25
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1021
    data modify storage api: Argument.FieldOverride.Damage set value 60f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
