#> asset:object/1009.arrow/hit_entity/from_player/
#
#
#
# @within function asset:object/1009.arrow/hit_entity/

#> Private
# @private
#declare tag 1009.Hit

#> Private
# @within function asset:object/1009.arrow/hit_entity/from_player/*
#declare tag 1009.Target

# 攻撃対象特定
    execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] run tag @s add 1009.Hit
    execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#lib:living_without_player,tag=1009.Hit,dx=0,sort=random,limit=1] run tag @s add 1009.Target
    execute positioned ~-0.3 ~-0.3 ~-0.3 run tag @e[type=#lib:living_without_player,tag=1009.Hit,dx=0] remove 1009.Hit
    execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#lib:living_without_player,tag=1009.Target,dx=0] positioned ~0.3 ~0.3 ~0.3 run function asset:object/1009.arrow/hit_entity/from_player/as_target
