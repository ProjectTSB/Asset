#> asset:mob/0420.astro_blaze/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/420/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle dust 0.975 0.25 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって丸焦げにされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
