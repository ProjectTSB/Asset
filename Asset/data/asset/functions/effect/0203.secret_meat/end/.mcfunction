#> asset:effect/0203.secret_meat/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0203.secret_meat/_/end

# 補正を削除する
    function asset:effect/0203.secret_meat/modifier/remove

# 最大体力の40%分のダメージを受ける
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.4 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは発狂し、内蔵をぶちまけた","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# MPを0にする
    data modify storage api: Argument.Fluctuation set value -666
    function api:mp/fluctuation
