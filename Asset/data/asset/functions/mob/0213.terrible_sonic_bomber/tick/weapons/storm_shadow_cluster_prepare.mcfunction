#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_cluster_prepare
#
#
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
    #declare score_holder $attack_start_time
    #declare tag 5X.StormShadowTarget

# 攻撃開始と終了時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 10
    execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 1

# 攻撃座標指定 対空砲の1番近くにいるプレイヤーの座標が攻撃目標、いないなら中心座標を狙う
    execute at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] run tag @p[tag=!PlayerShouldInvulnerable,distance=..128] add 5X.StormShadowTarget
    execute if entity @p[gamemode=!spectator,tag=5X.StormShadowTarget] run data modify storage asset:context this.storm_shadow.target_pos set from entity @p[gamemode=!spectator,tag=5X.StormShadowTarget] Pos
    execute unless entity @p[gamemode=!spectator,tag=5X.StormShadowTarget] run data modify storage asset:context this.storm_shadow.target_pos set from entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] Pos
    data modify storage asset:context this.storm_shadow.target_pos[1] set from entity @s Pos[1]

# 攻撃箇所表示
    data modify storage api: Argument.FieldOverride set value {Color:16737792,Tick:50,Scale:40f}
    data modify storage api: Argument.ID set value 2201
    execute if entity @p[gamemode=!spectator,tag=5X.StormShadowTarget] at @p[gamemode=!spectator,tag=5X.StormShadowTarget] positioned ~ ~0.01 ~ run function api:object/summon
    execute unless entity @p[gamemode=!spectator,tag=5X.StormShadowTarget] at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] positioned ~ ~0.01 ~ run function api:object/summon

# reset
    scoreboard players reset $attack_start_time Temporary
    tag @a remove 5X.StormShadowTarget
    data remove storage asset:temp args
