#> asset:object/2153.haruclaire_thrown_rod/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2153.haruclaire_thrown_rod/tick/move

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに あたまをぶつけた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# 終了
    scoreboard players set @s 2153.CoolTime 8
