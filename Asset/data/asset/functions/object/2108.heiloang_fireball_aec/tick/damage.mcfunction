#> asset:object/2108.heiloang_fireball_aec/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2108.heiloang_fireball_aec/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# ノーマル以下では、消滅時間を早める
    execute if predicate api:global_vars/difficulty/max/2_hard run scoreboard players add @s General.Object.Tick 50

# インターバル設定
    scoreboard players set @s 2108.DamageInterval 10
