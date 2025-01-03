#> asset:mob/0201.burnt_out_dream/tick/2.arrow/shot
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/2.arrow/main

# 演出
    playsound entity.arrow.shoot hostile @a ~ ~ ~ 1 1
# 矢を召喚する
    data modify storage api: Argument.ID set value 2172
    data modify storage api: Argument.FieldOverride.Damage set value 23.2
    data modify storage api: Argument.FieldOverride.Speed set value 3
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute anchored eyes positioned ^ ^ ^ facing entity @p[gamemode=!spectator,distance=..10] eyes run function api:object/summon
