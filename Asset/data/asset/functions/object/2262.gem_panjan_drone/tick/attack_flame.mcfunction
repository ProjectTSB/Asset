#> asset:object/2262.gem_panjan_drone/tick/attack_flame
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_flame

# 計算
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute unless score $Interval Temporary matches 9 run return run scoreboard players reset $Interval Temporary

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.FlameDamage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.FlameDamage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.FlameDamage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの兵士の炎で灰になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    function api:damage/reset

# 終了
    scoreboard players reset $Interval Temporary
