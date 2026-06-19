#> asset:artifact/1360.vintage_wine/use_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1360.vintage_wine/use_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 0.278 0.459 1 ~ ~1.2 ~ 0.4 0.4 0.4 1 10 normal

# 固有バフチェック
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/get/from_id

# スタックにつき回復量を変更
    execute if data storage api: Return.Effect{Stack: 1} run data modify storage api: Argument.Heal set value 10d
    execute if data storage api: Return.Effect{Stack: 2} run data modify storage api: Argument.Heal set value 12d
    execute if data storage api: Return.Effect{Stack: 3} run data modify storage api: Argument.Heal set value 15d
    execute if data storage api: Return.Effect{Stack: 4} run data modify storage api: Argument.Heal set value 19d
    execute if data storage api: Return.Effect{Stack: 5} run data modify storage api: Argument.Heal set value 25d
    execute if data storage api: Return.Effect{Stack: 6} run data modify storage api: Argument.Heal set value 33d
    execute if data storage api: Return.Effect{Stack: 7} run data modify storage api: Argument.Heal set value 43d
    execute if data storage api: Return.Effect{Stack: 8} run data modify storage api: Argument.Heal set value 56d
    execute if data storage api: Return.Effect{Stack: 9} run data modify storage api: Argument.Heal set value 71d
    execute if data storage api: Return.Effect{Stack:10} run data modify storage api: Argument.Heal set value 90d

# 回復
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 念のため固有バフ解除
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
