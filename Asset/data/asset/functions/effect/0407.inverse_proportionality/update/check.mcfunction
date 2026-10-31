#> asset:effect/0407.inverse_proportionality/update/check
#
#
#
# @within function asset:effect/0407.inverse_proportionality/**

#> Private
# @within function asset:effect/0407.inverse_proportionality/**
    #declare score_holder $E0407.MPRatio
    #declare score_holder $E0407.Modifier
    #declare score_holder $E0407.PrevModifier

# MP割合を取得、Fieldの値域に割り当てる
    function api:entity/player/get_mp_per
    execute store result score $E0407.MPRatio Temporary run data get storage api: Return.MPPer 100
    # 100%-81%: 耐性&回復量 +1%
    execute if score $E0407.MPRatio Temporary matches 81..100 run scoreboard players set $E0407.Modifier Temporary 10
    # 80%-61%: 耐性&回復量 +2%
    execute if score $E0407.MPRatio Temporary matches 61..80 run scoreboard players set $E0407.Modifier Temporary 20
    # 60%-41%: 耐性&回復量 +3.5%
    execute if score $E0407.MPRatio Temporary matches 41..60 run scoreboard players set $E0407.Modifier Temporary 35
    # 40%-21%: 耐性&回復量 +5%
    execute if score $E0407.MPRatio Temporary matches 21..40 run scoreboard players set $E0407.Modifier Temporary 50
    # 20%-0%: 耐性&回復量 +10%
    execute if score $E0407.MPRatio Temporary matches ..20 run scoreboard players set $E0407.Modifier Temporary 100
# 前回の値域から変わっているならmodifier更新
    execute store result score $E0407.PrevModifier Temporary run data get storage asset:context this.Modifier 1000
    #Fieldにmodifierを保存
    execute store result storage asset:context this.Modifier double 0.001 run scoreboard players get $E0407.Modifier Temporary
    execute unless score $E0407.Modifier Temporary = $E0407.PrevModifier Temporary run function asset:effect/0407.inverse_proportionality/update/

# リセット
    scoreboard players reset $E0407.MPRatio
    scoreboard players reset $E0407.Modifier
    scoreboard players reset $E0407.PrevModifier
