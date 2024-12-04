#> asset:object/2034.pumpkin_missile/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2034/kill

# 演出
    particle dust 1 0.6 0 1.4 ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a
    particle dust 0.851 0 1 1.4 ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.2 2 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.2 1.9 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
