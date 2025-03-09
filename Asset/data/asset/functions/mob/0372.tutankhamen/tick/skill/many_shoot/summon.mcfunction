#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon
#
# 怨霊弾を召喚
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread

#> Private
# @private
    #declare score_holder $StartDelay

# StartDelayを調整
    scoreboard players set $StartDelay Temporary 49

# 発射タイミングをある程度一定にする
    scoreboard players operation $StartDelay Temporary -= @s General.Mob.Tick

# 発射タイミングのランダム性
    execute store result score $Random Temporary run random value -20..-11
    scoreboard players operation $StartDelay Temporary += $Random Temporary

# 召喚
    data modify storage api: Argument.ID set value 2092
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ManyShoot
    execute store result storage api: Argument.FieldOverride.StartDelay int 1 run scoreboard players get $StartDelay Temporary
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=this,distance=..10,sort=nearest,limit=1] MobUUID
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @e[type=wither_skeleton,tag=this,distance=..10,sort=nearest,limit=1] AC.TargetID
    function api:object/summon

# リセット
    scoreboard players reset $StartDelay Temporary
    scoreboard players reset $Random Temporary

# 消滅
    kill @s
