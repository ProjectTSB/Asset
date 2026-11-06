#> asset:object/1152.yearning_rose/tick/chase.m
#
#
#
# @within function asset:object/1152.yearning_rose/tick/

# 対象がいない場合消滅する
    #$execute unless entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..32,sort=nearest,limit=1] run kill @s

# ついていく
    $execute positioned as @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..32,sort=nearest,limit=1] run tp @s ~ ~ ~
