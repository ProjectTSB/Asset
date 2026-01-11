#> asset:artifact/0456.potion_of_stalling_power/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0456.potion_of_stalling_power/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 薄れゆく速さデバフ(ID:211)があるかどうかチェックする
    #data modify storage api: Argument.ID set value 211
    #function api:entity/mob/effect/get/from_id

# デバフがなければ薄れゆく速さバフ(ID:210)を、あればデバフ(ID:211)を付与
    #execute unless data storage api: Return.Effect run data modify storage api: Argument.ID set value 210
    #execute if data storage api: Return.Effect run data modify storage api: Argument.ID set value 211

# 薄れゆく速さバフを付与
# EffectAssetのendのタイミングでエフェクトをgiveしても上手くいかないため
# TODO: 治り次第直す
    data modify storage api: Argument.ID set value 210
    data modify storage api: Argument.Stack set value 5
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
