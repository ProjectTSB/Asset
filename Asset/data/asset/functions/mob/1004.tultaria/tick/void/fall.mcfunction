#> asset:mob/1004.tultaria/tick/void/fall
#
#
#
# @within function asset:mob/1004.tultaria/tick/void/

# 浮遊にかかっているかを確認
    data modify storage api: Argument.ID set value 125
    function api:entity/mob/effect/get/from_id

# かかっていなければダメージ
    execute unless data storage api: Return.Effect run function asset:mob/1004.tultaria/tick/void/damage

# 演出
    particle dust 0.718 0.188 0.188 1 ~ ~1 ~ 0.3 0.5 0.3 0 5
