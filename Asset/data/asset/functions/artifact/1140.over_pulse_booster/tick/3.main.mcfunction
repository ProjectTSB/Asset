#> asset:artifact/1140.over_pulse_booster/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1140.over_pulse_booster/tick/2.check_condition

# 部位数に応じて落下ダメージ軽減
# FallDamageReduction = ($VL.Stack - 1) * 0.10
    # 装備数を取得
        data modify storage api: Argument.ID set value 274
        function api:entity/mob/effect/get/from_id
        execute store result score $VL.Stack Temporary run data get storage api: Return.Effect.Stack
    # 軽減率を設定
        scoreboard players remove $VL.Stack Temporary 1
        execute store result storage api: Argument.Amount double 0.01 run scoreboard players operation $VL.Stack Temporary *= $10 Const
    # 補正を追加
        data modify storage api: Argument.UUID set value [I;1,1,1140,3]
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/fall_resistance/add

# リセット
    scoreboard players reset $VL.Stack Temporary
