#> asset:object/1145.throwing_ark/detect_hit_entity/
#
# 数Tickごとにダメージ発生
#
# @within function asset:object/alias/1145/detect_hit_entity

#> private
# @private
    #declare score_holder $Interval

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# ickおきに実行
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 positioned ~-2 ~-0.5 ~-2 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=4,dy=1,dz=4] positioned ~2 ~0.5 ~2 run data modify storage asset:context IsHitEntity set value true
# リセット
    scoreboard players reset $Interval Temporary
