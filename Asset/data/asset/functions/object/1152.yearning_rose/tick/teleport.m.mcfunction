#> asset:object/1152.yearning_rose/tick/teleport
#
#
#
# @within function asset:object/1152.yearning_rose/tick/

# ついていく
    #$execute as @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..32,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=item_display,tag=this,distance=..32] ~ ~ ~
    $execute positioned as @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..32,sort=nearest,limit=1] run tp @s ~ ~ ~
