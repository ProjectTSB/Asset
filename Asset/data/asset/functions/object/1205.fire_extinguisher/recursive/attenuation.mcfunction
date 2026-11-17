#> asset:object/1205.fire_extinguisher/recursive/attenuation
#
#
#
# @within function asset:object/1205.fire_extinguisher/recursive/

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $Attenuation
    #declare score_holder $Min

# 数値取得
    execute store result score $Damage Temporary run data get storage asset:context this.Damage 100
    execute store result score $Attenuation Temporary run data get storage asset:context this.Attenuation.Amount 100
    execute store result score $Min Temporary run data get storage asset:context this.Attenuation.MinDamage 100

# ($Damage - $Attenuation) >= $Min
    scoreboard players operation $Damage Temporary -= $Attenuation Temporary
    execute store result storage asset:context this.Damage double 0.01 run scoreboard players operation $Damage Temporary > $Min Temporary

# 既に最小値になったなら実行しない
    execute if score $Damage Temporary = $Min Temporary run data modify storage asset:context this.Attenuation.IsMin set value true

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Attenuation Temporary
    scoreboard players reset $Min Temporary
