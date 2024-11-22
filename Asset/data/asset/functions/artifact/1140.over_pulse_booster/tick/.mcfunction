#> asset:artifact/1140.over_pulse_booster/tick/
#
# 毎tick実行される処理
#
# @within function asset:artifact/alias/1140/tick/

# 部位数に応じて移動速度上昇
# Level = $VL.Stack - 2
    # 装備数を取得
        data modify storage api: Argument.ID set value 274
        function api:entity/mob/effect/get/from_id
        execute store result score $VL.Stack Temporary run data get storage api: Return.Effect.Stack
    # 移動速度上昇を付与
        execute store result storage asset:temp VO.Level int 1 run scoreboard players remove $VL.Stack Temporary 3
        execute if score $VL.Stack Temporary matches ..-1 run effect clear @s speed
        execute if score $VL.Stack Temporary matches 0.. run function asset:artifact/1140.over_pulse_booster/tick/speed.m with storage asset:temp VO

# リセット
    scoreboard players reset $VL.Stack Temporary
    data remove storage asset:temp VO
