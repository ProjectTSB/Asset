#> asset:artifact/1682.pre_cise_empty/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1682.pre_cise_empty/give/1.trigger

# 神器のID (int)
    data modify storage asset:artifact ID set value 1682
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"Pre-cise_Empty","italic":true}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"スニーク時、近くに3つの補給物資を示す的が現れる"}','{"text":"的を打ち抜くごとにリロードが進行する"}','{"text":"タレットのエネルギーが尽きました！至急補給物資を回収します！","color":"gray"}']
# 使用回数 (int)
    data modify storage asset:artifact RemainingCount set value 3
# 神器を発動できるスロット (string)
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string)
    data modify storage asset:artifact Trigger set value "onClick"
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 40
# 種別クールダウン ({Type: string, Duration: int})
    data modify storage asset:artifact TypeCooldown.Type set value "longRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 4
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean)
    data modify storage asset:artifact DisableCooldownMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) 使用回数が尽きたときの別IDへの置換で鳴らさない
    data modify storage asset:artifact DisableBreakSound set value true
# 扱える神 (string[])
    data modify storage asset:artifact CanUsedGod set value ["Urban", "Wi-ki", "Rumor"]

# 神器の入手用function
    function asset:artifact/common/give
