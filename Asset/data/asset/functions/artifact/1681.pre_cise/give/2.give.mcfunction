#> asset:artifact/1681.pre_cise/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1681.pre_cise/give/1.trigger

# 神器のID (int)
    data modify storage asset:artifact ID set value 1681
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"Pre-cise","italic":true}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"スニーク時、目の前に的が現れる"}','{"text":"近くに敵がいればその敵をロックオンする(目線の先の敵を優先)"}','{"text":"的を打ち抜くごとに頭上のタレットがビームを発射し"}','{"text":"敵と自身に1秒間鈍足を与える"}']
# 使用回数 (int)
    data modify storage asset:artifact RemainingCount set value 12
# 神器を発動できるスロット (string)
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string)
    data modify storage asset:artifact Trigger set value "onClick"
# 攻撃に関する情報 -Damage量 (literal[]/literal)
    data modify storage asset:artifact AttackInfo.Damage set value [150]
# 攻撃に関する情報 -攻撃タイプ (string[])
    data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[])
    data modify storage asset:artifact AttackInfo.ElementType set value [Thunder]
# 攻撃に関する情報 -範囲攻撃 (string)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# 攻撃に関する情報 -攻撃範囲 (literal)
    data modify storage asset:artifact AttackInfo.AttackRange set value 20
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 0
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
