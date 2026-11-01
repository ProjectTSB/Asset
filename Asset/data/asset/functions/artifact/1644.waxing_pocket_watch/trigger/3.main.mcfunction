#> asset:artifact/1644.waxing_pocket_watch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1644.waxing_pocket_watch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 409

    # MP計測時間
        data modify storage api: Argument.Duration set value 200

    # MP差ごとのバリア付与量(倍率0.01)
        data modify storage api: Argument.FieldOverride.Multiplier set value 10

    # バリア最低値(倍率0.1)
        data modify storage api: Argument.FieldOverride.MinAbsorption set value 30

    # バリア最大値(倍率0.1)
        data modify storage api: Argument.FieldOverride.MaxAbsorption set value 200

    # バリア付与時間
        data modify storage api: Argument.FieldOverride.AbsorptionDuration set value 600

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound block.grindstone.use player @a ~ ~ ~ 1.0 0.5
