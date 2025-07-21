#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling
#
#
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon

#> prv
# @private
    #declare score_holder $attack_start_time

# 攻撃座標指定
    data modify entity 0-0-0-0-0 Pos set from storage asset:context this.gatling.target_pos
    data modify entity 0-0-0-0-0 Rotation set from storage asset:context this.gatling.target_rot
        #tellraw @a [{"storage":"asset:context","nbt":"this.gatling.target_pos"}]

# ダメージ
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの機銃掃射によって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute at 0-0-0-0-0 positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの機銃掃射によって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute at 0-0-0-0-0 positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの機銃掃射によって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute at 0-0-0-0-0 positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

    #say attack

# 着弾音
    execute at 0-0-0-0-0 run playsound minecraft:entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 1.0 1.5 1.0
    execute at 0-0-0-0-0 run playsound minecraft:entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1.0 2 1.0

# particle
    execute at 0-0-0-0-0 run particle explosion ~ ~0.5 ~ 0.5 0.5 0.5 0 3 normal

# 次回攻撃座標指定
    execute at 0-0-0-0-0 run tp 0-0-0-0-0 ^ ^ ^1
    data modify storage asset:context this.gatling.target_pos set from entity 0-0-0-0-0 Pos

# 次回攻撃開始時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 1

# reset
    scoreboard players reset $attack_start_time Temporary
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0
