#> asset:artifact/0456.potion_of_stalling_power/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0456.potion_of_stalling_power/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 薄れゆく速さバフ(ID:210)があるかどうかチェックする
    data modify storage api: Argument.ID set value 210
    function api:entity/mob/effect/get/from_id

# バフがあるならダメージ
    execute if data storage api: Return.Effect{ID:210} run function asset:artifact/0456.potion_of_stalling_power/trigger/reuse_damage

# 薄れゆく速さバフを付与
# 仕様書
# ((Stack - 1) * Amount)%から始まり、Durationが切れるたびにスタックが1減少し、効果時間が元に戻る
# スタックが1の状態で時間切れになるとデバフに変化する
    data modify storage api: Argument.ID set value 210
    data modify storage api: Argument.Stack set value 5
    data modify storage api: Argument.Duration set value 200
    data modify storage api: Argument.FieldOverride.Amount set value 0.2
    data modify storage api: Argument.FieldOverride.Debuff.Duration set value 400
    data modify storage api: Argument.FieldOverride.Debuff.Amount set value -0.2
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
