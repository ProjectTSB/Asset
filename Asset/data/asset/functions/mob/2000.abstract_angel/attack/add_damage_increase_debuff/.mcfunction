#> asset:mob/2000.abstract_angel/attack/add_damage_increase_debuff/
#
#
#
# @within function asset:mob/2000.abstract_angel/attack/

#> Private
# @private
    #declare score_holder $Tick
    #declare score_holder $LatestTick
    #declare score_holder $InflictDebuffCooldown

# 最後に被弾してから N tick 経っていたら被ダメージ上昇を与える
    execute store result score $LatestTick Temporary run scoreboard players get @s 1JK.LatestDamageIncreaseDebuffAddTick
    execute store result score $InflictDebuffCooldown Temporary run data get storage asset:context this.InflictDebuffCooldown -1

    execute store result score $Tick Temporary run time query gametime
    scoreboard players operation $LatestTick Temporary -= $Tick Temporary
    execute if score $LatestTick Temporary <= $InflictDebuffCooldown Temporary run function asset:mob/2000.abstract_angel/attack/add_damage_increase_debuff/add
    execute if score $LatestTick Temporary <= $InflictDebuffCooldown Temporary run scoreboard players operation @s 1JK.LatestDamageIncreaseDebuffAddTick = $Tick Temporary
# リセット
    scoreboard players reset $Tick Temporary
    scoreboard players reset $LatestTick Temporary
    scoreboard players reset $InflictDebuffCooldown Temporary
