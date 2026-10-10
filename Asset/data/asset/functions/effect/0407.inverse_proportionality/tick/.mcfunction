#> asset:effect/0407.inverse_proportionality/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0407.inverse_proportionality/_/tick

#> Private
# @within function asset:effect/0407.inverse_proportionality/**
    #declare score_holder $MPRatio
    #declare score_holder $MPMax
    #declare score_holder $Modifier
    #declare score_holder $PrevModifier

# MP割合を取得、Fieldの値域に割り当てる
    function api:mp/get_current
    execute store result score $MPRatio Temporary run data get storage api: Return.CurrentMP 1000
    function api:mp/get_max
    execute store result score $MPMax Temporary run data get storage api: Return.MaxMP 10
    scoreboard players operation $MPRatio Temporary /= $MPMax Temporary
    # 100%-81%: 耐性&回復量 +1%
    execute if score $MPRatio Temporary matches 81..100 run scoreboard players set $Modifier Temporary 10
    # 80%-61%: 耐性&回復量 +2%
    execute if score $MPRatio Temporary matches 61..80 run scoreboard players set $Modifier Temporary 20
    # 60%-41%: 耐性&回復量 +3.5%
    execute if score $MPRatio Temporary matches 41..60 run scoreboard players set $Modifier Temporary 35
    # 40%-21%: 耐性&回復量 +5%
    execute if score $MPRatio Temporary matches 21..40 run scoreboard players set $Modifier Temporary 50
    # 20%-0%: 耐性&回復量 +10%
    execute if score $MPRatio Temporary matches ..20 run scoreboard players set $Modifier Temporary 100
# 前回の値域から変わっているならmodifier更新
    execute store result score $PrevModifier Temporary run data get storage asset:context this.Modifier 1000
    #Fieldにmodifierを保存
    execute store result storage asset:context this.Modifier double 0.001 run scoreboard players get $Modifier Temporary
    execute unless score $Modifier Temporary = $PrevModifier Temporary run function asset:effect/0407.inverse_proportionality/update/

# リセット
    scoreboard players reset $MPRatio Temporary
    scoreboard players reset $MPMax Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $PrevModifier Temporary
