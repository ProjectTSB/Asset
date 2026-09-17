#> asset:artifact/1619.volt_rave/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1619.volt_rave/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:electric1 player @a ~ ~ ~ 1 1.2

# チャージ用Effectを付与
    # 最大射程(射程×2)
        data modify storage api: Argument.FieldOverride.MaxRange set value 50
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value {Normal:1000,FullCharge:2000}
    # 付与
        data modify storage api: Argument.ID set value 394
        function api:entity/mob/effect/give
        function api:entity/mob/effect/reset
