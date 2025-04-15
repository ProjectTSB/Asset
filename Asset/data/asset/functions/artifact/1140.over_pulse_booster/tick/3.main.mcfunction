#> asset:artifact/1140.over_pulse_booster/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1140.over_pulse_booster/tick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/feet

# 部位数に応じて移動速度上昇
# Level = $VL.Stack - 2
    # 装備数を取得
        data modify storage api: Argument.ID set value 274
        function api:entity/mob/effect/get/from_id
        execute store result score $VL.Stack Temporary run data get storage api: Return.Effect.Stack
    # 移動速度上昇を付与
        scoreboard players remove $VL.Stack Temporary 1
        execute store result storage asset:temp VO.Amount double 0.10 run scoreboard players operation $VL.Stack Temporary > $0 Const
        function asset:artifact/1140.over_pulse_booster/tick/speed/remove
        execute unless data storage asset:temp VO{Amount:0d} run function asset:artifact/1140.over_pulse_booster/tick/speed/add.m with storage asset:temp VO

# リセット
    scoreboard players reset $VL.Stack Temporary
    data remove storage asset:temp VO
