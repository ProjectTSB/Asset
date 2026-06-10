#> asset:mob/0461.nectar_plant/tick/attack
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

#> Private
# @private
    #declare score_holder $Heal
    #declare score_holder $Difficulty

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,20f,0.5f],Color:16732083,DisappearInterpolation:4,LifeTime:12}
    execute anchored eyes positioned ^ ^ ^ rotated ~ -90 run function api:object/summon

# 演出
    execute anchored eyes positioned ^ ^ ^ run particle dust 1 0.46 0.87 1.5 ~ ~12 ~ 0.3 10 0.3 0 60 normal @a
    playsound entity.warden.death hostile @a ~ ~ ~ 1 1.8
    playsound entity.warden.death hostile @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.squid.squirt hostile @a ~ ~ ~ 0.6 0.9

# 回復量計算
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result score $Heal Temporary run data get storage asset:context this.Heal
    execute store result storage api: Argument.Heal int 1 run scoreboard players operation $Heal Temporary *= $Difficulty Temporary

# 近くのプレイヤーへ座標攻撃
    data modify storage api: Argument.ID set value 2278
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Heal set from storage asset:context this.Heal
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Delay
    data modify storage api: Argument.FieldOverride.Metadata set from storage asset:context this.Metadata
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @p[gamemode=!spectator,distance=..16] run function api:object/summon

# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Difficulty Temporary
