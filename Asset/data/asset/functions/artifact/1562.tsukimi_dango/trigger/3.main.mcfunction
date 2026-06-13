#> asset:artifact/1562.tsukimi_dango/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1562.tsukimi_dango/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# バリア量取得
    function api:entity/player/absorption/calc_amount

# バリア量のN%をバリアとする
    execute store result storage api: Argument.FieldOveeride.Barribar double 0.0333 run data get storage api: Return.Absorption.Amount 1000

# 付与
    data modify storage api: Argument.ID set value 371
    data modify storage api: Argument.Duration set value 600
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
