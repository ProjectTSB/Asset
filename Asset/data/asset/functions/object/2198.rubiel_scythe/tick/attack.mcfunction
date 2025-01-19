#> asset:object/2198.rubiel_scythe/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2198.rubiel_scythe/tick/move

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# 終了
    scoreboard players set @s 2198.CoolTime 8
