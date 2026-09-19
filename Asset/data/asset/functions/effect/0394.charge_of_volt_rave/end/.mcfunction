#> asset:effect/0394.charge_of_volt_rave/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0394.charge_of_volt_rave/_/end

#> Private
# @private
    #declare score_holder $MaxRange
    #declare score_holder $Range

# 演出
    execute if data storage asset:context this{IsFullCharge:false} anchored eyes positioned ^ ^ ^1 run function asset:effect/0394.charge_of_volt_rave/end/sound/normal
    execute if data storage asset:context this{IsFullCharge: true} anchored eyes positioned ^ ^ ^1 run function asset:effect/0394.charge_of_volt_rave/end/sound/full_charge

# EffectAssetには何故かthisがないので代用
    tag @s add 394.this

# 前方に再帰
    data modify storage asset:context this.Range set from storage asset:context this.MaxRange
    execute anchored eyes positioned ^ ^ ^ rotated ~-2 ~ run function asset:effect/0394.charge_of_volt_rave/end/recursive

# ((MaxRange - Range) / 2)*0.6を演出用Objectのscaleとする
    execute store result score $Range Temporary run data get storage asset:context this.Range
    execute store result score $MaxRange Temporary run data get storage asset:context this.MaxRange
    execute store result storage api: Argument.FieldOverride.Scale float 0.3 run scoreboard players operation $MaxRange Temporary -= $Range Temporary

# Object召喚
    data modify storage api: Argument.ID set value 1189
    data modify storage api: Argument.FieldOverride.IsFullCharge set from storage asset:context this.IsFullCharge
    execute anchored eyes positioned ^-0.1 ^ ^ rotated ~-2 ~ run function api:object/summon

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
    tag @s remove 394.this
