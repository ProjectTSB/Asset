#> asset:object/1019.voltage_bullet/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1019/detect_hit_entity

# ヒット検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
