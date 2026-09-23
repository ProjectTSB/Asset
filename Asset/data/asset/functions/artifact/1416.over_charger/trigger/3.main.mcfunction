#> asset:artifact/1416.over_charger/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1416.over_charger/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# バフチェック
    data modify storage api: Argument.ID set value 398
    function api:entity/mob/effect/get/from_id

# バフがなければ付与
    execute unless data storage api: Return.Effect run function asset:artifact/1416.over_charger/trigger/give

# 付与されていれば解除
    execute if data storage api: Return.Effect run function asset:artifact/1416.over_charger/trigger/remove
