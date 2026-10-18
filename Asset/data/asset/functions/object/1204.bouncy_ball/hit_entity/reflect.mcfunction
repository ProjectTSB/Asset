#> asset:object/1204.bouncy_ball/hit_entity/reflect
#
# 
#
# @within function asset:object/1204.bouncy_ball/hit_entity/

#反射回数を1減らす
    execute store result storage asset:context this.ReflectionLimit int 0.9999999999 run data get storage asset:context this.ReflectionLimit 1
#向きを変える
    tp @s ^ ^ ^ facing entity @e[type=#lib:living_without_player,tag=!1AI.HitEnemy,tag=!Uninterferable,distance=..12,sort=random,limit=1] eyes
