#> asset:object/1142.raging_passion_pickaxe/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1142/detect_hit_entity

# Tagがある時のみに判定
    execute if entity @s[tag=1142.Damage] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
