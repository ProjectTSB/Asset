#> asset:object/1152.yearning_rose/init/get_scale/m
#
#
#
# @within function asset:object/1152.yearning_rose/init/

# ターゲットとして実行
    $execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,scores={MobUUID=$(TargetMobUUID)},distance=..10] at @s anchored eyes positioned ^ ^ ^ run function asset:object/1152.yearning_rose/init/get_scale/recursive
