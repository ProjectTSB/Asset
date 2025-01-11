#> asset:object/1073.arrow_of_attraction/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1073/detect_hit_entity

execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run data modify storage asset:context IsHitEntity set value true
