#> asset:effect/0420.poi/marker/remove
#
#
#
# @within function asset:effect/0420.poi/**

#> private
# @private
    #declare score_holder $E0420.MobUUID

    scoreboard players operation $E0420.MobUUID Temporary = @s MobUUID
    execute anchored eyes positioned ^ ^ ^ as @e[type=item_display,tag=O1211.Marker,distance=..1] if score @s O1211.MobUUID = $E0420.MobUUID Temporary run kill @s

    scoreboard players reset $E0420.MobUUID
