#> asset:artifact/1657.phoenix_shield/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1657.phoenix_shield/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
# 記録削除
    scoreboard players reset @s 1A1.DamageSum

# 火種取得音
    function asset:artifact/1657.phoenix_shield/trigger/vfx/

# effect付与(ここで各ステータスを調整)(火種獲得に必要なダメージ量はcheck_conditionで指定)
    data modify storage api: Argument.ID set value 433
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.StackOperation set value "add"
# 火種の効果時間
    data modify storage api: Argument.Duration set value 3600
# 火種の最大スタック数
    data modify storage api: Argument.FieldOverride.MaxStack set value 3
# バリアがいくつ以下のときにバリアを付与するか
    data modify storage api: Argument.FieldOverride.Threshold set value 5
# 付与するバリアの量
    data modify storage api: Argument.FieldOverride.Barrier set value 25
# バリアの継続時間
    data modify storage api: Argument.FieldOverride.BarrierDuration set value 3600
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
