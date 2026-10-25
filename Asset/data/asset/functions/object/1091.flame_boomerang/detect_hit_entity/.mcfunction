#> asset:object/1091.flame_boomerang/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/detect_hit_entity

# 敵にヒットしたか
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run data modify storage asset:context IsHitEntity set value true

# 一定Tick経過後はプレイヤーにヒットしたかもチェック
    execute if score @s General.Object.Tick matches 21.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Owner,dx=0] run data modify storage asset:context IsHitEntity set value true
    execute if score @s General.Object.Tick matches 21.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Owner,dx=0] run tag @s add ReturnToOwner
