#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon
#
# 魔法陣を召喚
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread

#> Private
# @private
    #declare score_holder $StartDelay

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p[distance=..100] eyes

# StartDelayを59にする
    scoreboard players set $StartDelay Temporary 49

# 発射タイミングをある程度一定にする
    scoreboard players operation $StartDelay Temporary -= @s General.Mob.Tick

# 発射タイミングのランダム性
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $10 Const
    scoreboard players remove $Random Temporary 10
    scoreboard players operation $StartDelay Temporary += $Random Temporary

# 召喚
    data modify storage api: Argument.ID set value 2092
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @e[type=wither_skeleton,tag=this,distance=..10,sort=nearest,limit=1] AC.TargetID
    execute store result storage api: Argument.FieldOverride.StartDelay int 1 run scoreboard players get $StartDelay Temporary
    function api:object/summon

# リセット
    scoreboard players reset $StartDelay Temporary
    scoreboard players reset $Random Temporary

# 消滅
    kill @s
