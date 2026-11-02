#> asset:artifact/1412.seal_of_dual_rhythm/give/2.give
#
# @user
# @within function asset:artifact/1412.seal_of_dual_rhythm/give/1.trigger

# 神器のID
    data modify storage asset:artifact ID set value 1412
# 神器の Namespace (string)
    data modify storage asset:artifact Namespace set value "1412.seal_of_dual_rhythm"
# 神器の入口 ({Event: string, Entry: string}[])
    data modify storage asset:artifact Triggers set value [{Event:"dis_equip",Entry:"trigger/dis_equip/"},{Event:"tick",Entry:"trigger/1.trigger"}]
# ベースアイテム（テクスチャ設定前の仮アイテム）
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前
    data modify storage asset:artifact Name set value '{"text":"双律の印章","color":"gold"}'
# 神器の説明文
    data modify storage asset:artifact Lore set value ['{"text":"自身の被ダメージを常時10%軽減する。","color":"white"}','{"text":"他のプレイヤーが触れた時、軽減効果が削除され、","color":"white"}','{"text":"該当のプレイヤーの与ダメージが15秒間20%上昇する。","color":"white"}','{"text":"この効果が発動してから60秒経過後、軽減効果が戻る。","color":"white"}']
# 発動するスロット
    data modify storage asset:artifact Slot set value "offhand"
# 発動条件の表示
    data modify storage asset:artifact LoreTrigger set value "passive"
# 消費MP
    data modify storage asset:artifact MPCost set value 0
# 使用可能な信仰
    data modify storage asset:artifact CanUsedGod set value "ALL"

# 神器を作成して渡す
    function asset:artifact/common/give
