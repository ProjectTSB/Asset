#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
#
#
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon

#> prv
# @private
    #declare score_holder $attack_start_time

# 攻撃対象を取得
    execute store result storage api: Argument.FieldOverride.TargetPlayerID int 1 run scoreboard players get @p[gamemode=!spectator,tag=5X.BrimstoneTarget] UserID

# オブジェクト召喚
    execute if entity @p[gamemode=!spectator,tag=5X.BrimstoneTarget] run data modify storage api: Argument.ID set value 2083
    execute if entity @p[gamemode=!spectator,tag=5X.BrimstoneTarget] store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if entity @p[gamemode=!spectator,tag=5X.BrimstoneTarget] run function api:object/summon

# 対象を次回攻撃対象から外す
    tag @p[gamemode=!spectator,tag=5X.BrimstoneTarget] remove 5X.BrimstoneTarget

# 次回攻撃開始時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 3

# reset
    scoreboard players reset $attack_start_time Temporary
