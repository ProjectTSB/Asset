#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/damage
#
# 大ダメージを受けるし、空高く飛ばされる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/explosion

# ダメージ処理
    function api:damage/

# 浮遊を付与
    data modify storage api: Argument.Stack set value 60
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Duration set value 3
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
