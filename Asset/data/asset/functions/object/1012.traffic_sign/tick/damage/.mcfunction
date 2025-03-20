#> asset:object/1012.traffic_sign/tick/damage/
#
#
#
# @within function asset:object/1012.traffic_sign/tick/

#> Private
# @private
    #declare score_holder $BaseSpeed
    #declare score_holder $Speed

# Damage = (Min ~ Max) * (|(速度 / ベース速度)% - 100%| * 130% + 100%)
    execute store result score $Speed Temporary run attribute @s generic.movement_speed get 10000
    execute store result score $BaseSpeed Temporary run attribute @s generic.movement_speed base get 10
    execute if score $BaseSpeed Temporary matches 0 run scoreboard players set $Speed Temporary 1000
    execute if score $BaseSpeed Temporary matches 0 run scoreboard players set $BaseSpeed Temporary 1
    scoreboard players operation $Speed Temporary /= $BaseSpeed Temporary
    scoreboard players remove $Speed Temporary 1000
    execute if score $Speed Temporary matches ..0 run scoreboard players operation $Speed Temporary *= $-1 Const
    scoreboard players operation $Speed Temporary *= $13 Const
    scoreboard players add $Speed Temporary 10000
    execute store result storage asset:temp Args.Damage int 1 run function asset:object/1012.traffic_sign/tick/damage/get_random.m with storage asset:context this.Damage
    function asset:object/1012.traffic_sign/tick/damage/set.m with storage asset:temp Args
    data remove storage asset:temp Args

# ダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=Owner] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# パーティクル
    particle item anvil ~ ~0.1 ~ 1 0.5 1 0.1 15

# リセット
    scoreboard players reset $Speed Temporary
    scoreboard players reset $BaseSpeed Temporary
