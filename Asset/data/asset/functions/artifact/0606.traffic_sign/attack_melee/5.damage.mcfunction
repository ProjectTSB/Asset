#> asset:artifact/0606.traffic_sign/attack_melee/5.damage
#
# ダメージを与える処理
#
# @within function asset:artifact/0606.traffic_sign/attack_melee/4.1.schedule_tick

#> Private
# @private
    #declare score_holder $BaseSpeed
    #declare score_holder $Speed

# Damage = (250 ~ 350) * (|(速度 / ベース速度)% - 100%| * 130% + 100%)
    execute store result score $Speed Temporary run attribute @s generic.movement_speed get 10000
    execute store result score $BaseSpeed Temporary run attribute @s generic.movement_speed base get 10
    execute if score $BaseSpeed Temporary matches 0 run scoreboard players set $Speed Temporary 1000
    execute if score $BaseSpeed Temporary matches 0 run scoreboard players set $BaseSpeed Temporary 1
    scoreboard players operation $Speed Temporary /= $BaseSpeed Temporary
    scoreboard players remove $Speed Temporary 1000
    execute if score $Speed Temporary matches ..0 run scoreboard players operation $Speed Temporary *= $-1 Const
    scoreboard players operation $Speed Temporary *= $13 Const
    scoreboard players add $Speed Temporary 10000
    execute store result storage asset:temp Args.Damage int 1 run random value 250..350
    function asset:artifact/0606.traffic_sign/attack_melee/5.1.set_damage.m with storage asset:temp Args
    data remove storage asset:temp Args

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
