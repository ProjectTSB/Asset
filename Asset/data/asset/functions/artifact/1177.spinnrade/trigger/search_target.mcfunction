#> asset:artifact/1177.spinnrade/trigger/search_target
#
#
#
# @within function
#   asset:artifact/1177.spinnrade/trigger/3.main
#   asset:artifact/1177.spinnrade/trigger/search_target

# 近くに敵がいたらMobUUIDをスコアに入れておいてreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] store result score $WP.TargetMobUUID Temporary run return run scoreboard players get @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] MobUUID

# 再帰
    execute if entity @s[distance=..24] positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision run function asset:artifact/1177.spinnrade/trigger/search_target
