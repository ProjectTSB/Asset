#> asset:artifact/0456.potion_of_stalling_power/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/456/use_item/

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
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
