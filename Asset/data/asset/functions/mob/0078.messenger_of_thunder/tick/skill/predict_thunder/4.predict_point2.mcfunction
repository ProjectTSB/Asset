#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
#
# 偏差の処理2
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/3.predict_point.m

# 演出
    playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 最初の1回だけは偏差位置に落ちるようにする

# AECを召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:31,Tags:["Object","26.SkillThunderMarker"]}
    execute if entity @s[tag=26.NotFirst] run data modify storage lib: Argument.Bounds set value [[6d,6d],[0d,0d],[6d,6d]]
    execute if entity @s[tag=26.NotFirst] as @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 最初の1回ではないこと検知用Tagを付与
    tag @s add 26.NotFirst
