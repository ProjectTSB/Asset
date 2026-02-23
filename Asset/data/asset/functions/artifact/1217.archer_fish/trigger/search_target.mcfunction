#> asset:artifact/1217.archer_fish/trigger/search_target
#
# 再帰で視点先にターゲットがいないか探す
#
# @within function
#   asset:artifact/1217.archer_fish/trigger/3.main
#   asset:artifact/1217.archer_fish/trigger/search_target

# 近くに敵がいたらMobUUIDをスコアに入れておいてreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] store result score $XT.TargetMobUUID Temporary run return run scoreboard players get @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] MobUUID

# 再帰
    execute if entity @s[distance=..20] positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision run function asset:artifact/1217.archer_fish/trigger/search_target
