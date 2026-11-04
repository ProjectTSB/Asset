#> asset:effect/0420.poi/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0420.poi/_/given

# Object1211を召喚
    data modify storage api: Argument.ID set value 1211
    #Objectの存在時間はEffect側で管理するため、余裕を持って2倍を設定
    execute store result storage api: Argument.FieldOverride.Tick int 2 run data get storage asset:context Duration
    execute store result storage api: Argument.FieldOverride.UUID int 1 run scoreboard players get @s MobUUID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
