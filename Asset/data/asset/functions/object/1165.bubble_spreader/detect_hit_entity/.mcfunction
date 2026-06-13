#> asset:object/1165.bubble_spreader/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/detect_hit_entity

# ヒット検知
    execute if score @s General.Object.Tick matches 16.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true
