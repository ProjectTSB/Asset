#> asset:effect/0203.secret_meat/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0203.secret_meat/_/end

# 補正を削除する
    function asset:effect/0203.secret_meat/modifier/remove

# 最大体力の40%分のダメージを受ける
    execute store result storage api: Argument.Damage double 0.4 run attribute @s generic.max_health get
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# MPを0にする
    data modify storage api: Argument.Fluctuation set value -666
    function api:mp/fluctuation
