#> asset:artifact/0954.inverted_parachute/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/954/tick/

# 地面にいる時のみ演出
    function api:data_get/on_ground
    execute if data storage api: {OnGround:1b} run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 4
    data modify storage api: Argument.Duration set value 40
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
