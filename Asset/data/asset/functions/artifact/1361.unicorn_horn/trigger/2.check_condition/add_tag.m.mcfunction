#> asset:artifact/1361.unicorn_horn/trigger/2.check_condition/add_tag.m
#
#
#
# @within function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target

# tagを付与
    $tag @e[type=#lib:living_without_player,tag=Enemy,tag=Victim,scores={MobUUID=$(TargetMobUUID)},distance=..150,sort=nearest,limit=1] add TempTarget
