#> asset:effect/0378.bubble_shoot/tick/summon
#
# 召喚処理・演出
#
# @within function asset:effect/0378.bubble_shoot/tick/

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    function asset:effect/0378.bubble_shoot/tick/vfx/

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 0.5
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1165
    data modify storage api: Argument.FieldOverride.Damage set value 150f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
