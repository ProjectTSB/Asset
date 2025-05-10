#> asset:object/2250.clock_fire/tick/blast
#
#
#
# @within function asset:object/2250.clock_fire/tick/

# 演出
    function asset:object/2250.clock_fire/tick/vfx

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの爆発により消し炭となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function api:damage/
    function api:damage/reset

# キル
    kill @s
