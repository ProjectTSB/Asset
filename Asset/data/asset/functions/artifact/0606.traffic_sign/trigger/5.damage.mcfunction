#> asset:artifact/0606.traffic_sign/trigger/5.damage
#
# ダメージを与える処理
#
# @within function asset:artifact/0606.traffic_sign/trigger/4.1.schedule_tick

#> Private
# @private
    #declare score_holder $BaseSpeed
    #declare score_holder $Speed

# Damage = 280 * |(速度 / ベース速度)% - 100%| + 100%
    execute store result score $Speed Temporary run attribute @s generic.movement_speed get 100000
    execute store result score $BaseSpeed Temporary run attribute @s generic.movement_speed base get 1000
    execute if score $Speed Temporary matches 0 run scoreboard players set $Speed Temporary 100
    execute if score $BaseSpeed Temporary matches 0 run scoreboard players set $BaseSpeed Temporary 1
    scoreboard players operation $Speed Temporary /= $BaseSpeed Temporary
    scoreboard players remove $Speed Temporary 100
    execute if score $Speed Temporary matches ..0 run scoreboard players operation $Speed Temporary *= $-1 Const
    scoreboard players operation $Speed Temporary *= $15 Const
    scoreboard players add $Speed Temporary 1000
    execute store result storage lib: Argument.Damage double 0.28 run scoreboard players operation $Speed Temporary > $1 Const

# ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    execute as @p[tag=GU.Owner] run function lib:damage/modifier
    function lib:damage/

# パーティクル
    particle item anvil ~ ~0.1 ~ 1 0.5 1 0.1 15

# リセット
    scoreboard players reset $Speed Temporary
    scoreboard players reset $BaseSpeed Temporary
    function lib:damage/reset
