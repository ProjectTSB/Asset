#> asset:artifact/1645.straw_to_grab/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1645.straw_to_grab/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# Effect418を付与
    data modify storage api: Argument.ID set value 418

    # 効果時間
        data modify storage api: Argument.Duration set value 100

    # 消費間隔
        data modify storage api: Argument.FieldOverride.FluctuationInterval set value 2

    # 一回で消費されるMP量
        data modify storage api: Argument.FieldOverride.MPFluctuation set value -1

    ## 成功時のバフ
    # 効果時間
        data modify storage api: Argument.FieldOverride.Buff.Duration set value 200
    # 水耐性
        data modify storage api: Argument.FieldOverride.Buff.Amount set value 0.15d

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound block.bubble_column.whirlpool_inside player @a ~ ~ ~ 1.0 0.7
