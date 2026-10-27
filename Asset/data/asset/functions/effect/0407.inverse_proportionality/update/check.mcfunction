#> asset:effect/0407.inverse_proportionality/update/check
#
#
#
# @within function asset:effect/0407.inverse_proportionality/**

#> Private
# @within function asset:effect/0407.inverse_proportionality/**
    #declare score_holder $MPRatio
    #declare score_holder $DefenseModifier
    #declare score_holder $PrevModifier

# MP割合を取得、Fieldの値域に割り当てる
    function api:entity/player/get_mp_per
    execute store result score $MPRatio Temporary run data get storage api: Return.MPPer 100
    # 100%-81%: 耐性&回復量 +1%
    execute if score $MPRatio Temporary matches 81..100 run scoreboard players set $DefenseModifier Temporary 10
    # 80%-61%: 耐性&回復量 +2%
    execute if score $MPRatio Temporary matches 61..80 run scoreboard players set $DefenseModifier Temporary 20
    # 60%-41%: 耐性&回復量 +3.5%
    execute if score $MPRatio Temporary matches 41..60 run scoreboard players set $DefenseModifier Temporary 35
    # 40%-21%: 耐性&回復量 +5%
    execute if score $MPRatio Temporary matches 21..40 run scoreboard players set $DefenseModifier Temporary 50
    # 20%-0%: 耐性&回復量 +10%
    execute if score $MPRatio Temporary matches ..20 run scoreboard players set $DefenseModifier Temporary 100
# 前回の値域から変わっているならmodifier更新
    execute store result score $PrevModifier Temporary run data get storage asset:context this.Modifier 1000
    #Fieldにmodifierを保存
    execute store result storage asset:context this.Modifier double 0.001 run scoreboard players get $DefenseModifier Temporary
    execute unless score $DefenseModifier Temporary = $PrevModifier Temporary run function asset:effect/0407.inverse_proportionality/update/

# リセット
    scoreboard players reset $MPRatio Temporary
    scoreboard players reset $DefenseModifier Temporary
    scoreboard players reset $PrevModifier Temporary
