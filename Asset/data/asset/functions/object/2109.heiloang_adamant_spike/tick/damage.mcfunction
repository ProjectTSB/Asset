#> asset:object/2109.heiloang_adamant_spike/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2109.heiloang_adamant_spike/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~ ~-1 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..3.3] run function api:damage/
    function api:damage/reset

# インターバル
    scoreboard players set @s 2109.DamageInterval 5
