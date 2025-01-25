#> asset:artifact/0793.queen_bee_rocket/click/bee_summon
#
#
#
# @within function asset:artifact/0793.queen_bee_rocket/click/

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.6
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1065
    data modify storage api: Argument.FieldOverride.Damage set value 530
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
