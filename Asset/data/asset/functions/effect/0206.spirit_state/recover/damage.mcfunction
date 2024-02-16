#> asset:effect/0206.spirit_state/recover/damage
# @within function asset:effect/0206.spirit_state/recover/

# ダメージ
    execute store result storage api: Argument.Damage float 10 run attribute @s generic.max_health get 1
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは戻ってこなかった…","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/

# リセット
    function api:damage/reset
