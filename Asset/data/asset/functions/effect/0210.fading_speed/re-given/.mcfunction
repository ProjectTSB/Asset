#> asset:effect/0210.fading_speed/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0210.fading_speed/_/re-given

# 最大体力の20%分の固定ダメージを受ける
    execute store result storage api: Argument.Damage double 0.2 run attribute @s generic.max_health get
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは速度の代償を払った","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/
    function api:damage/reset
