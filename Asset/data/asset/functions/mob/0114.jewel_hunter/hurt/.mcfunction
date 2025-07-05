#> asset:mob/0114.jewel_hunter/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/114/hurt

#> Private
# @private
    #declare score_holder $LatestReflectTick
    #declare score_holder $CurrentTick
    #declare tag CanReflect

# 演出
    particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 1 1 0

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# Attackerが離れた場所にいる場合、Attackerに反射攻撃する
    execute unless entity @p[tag=Attacker,distance=..5] run function asset:mob/0114.jewel_hunter/hurt/reflect_cooldown
