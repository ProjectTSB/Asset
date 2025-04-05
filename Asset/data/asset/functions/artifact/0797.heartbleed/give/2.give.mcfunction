#> asset:artifact/0797.heartbleed/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0797.heartbleed/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 797
# 神器のベースアイテム
    data modify storage asset:artifact Item set value carrot_on_a_stick
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"Heartbleed","color":"dark_red"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"前方半径5m以内の敵の内部を魔力で","color":"white"}','{"text":"切断しダメージと出血を与える。","color":"white"}','{"text":"出血の効果時間は自分の現在HPが少ないほど長くなる。(最大5秒)","color":"white"}','{"text":"出血は敵に0.3秒ごとに45ダメージを与える。","color":"white"}','[{"text":"Message: ","color":"red"},{"text":"0x18 0x0302 0x0003 0x01 0x4000","color":"red","italic":true}]']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value [220]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value every
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 5
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 75
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量 (int)
    # data modify storage asset:artifact MPHealWhenHit set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "shortRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 30
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
