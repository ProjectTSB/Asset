#> asset:object/1158.ouroboros_ball/hit_entity/reflect
#
# 反射処理
#
# @within function asset:object/1158.ouroboros_ball/hit_entity/

#反射回数を1減らす
    execute store result storage asset:context this.ReflectionLimit int 0.9999999999 run data get storage asset:context this.ReflectionLimit 1
#向きを変える
    tp @s ^ ^ ^ facing entity @e[type=#lib:living_without_player,tag=!13S.HitEnemy,tag=!Uninterferable,distance=..8,sort=random,limit=1] eyes
#vfx
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1.0 0.65 0.0
