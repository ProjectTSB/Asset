#> asset:artifact/0897.lightning_broach/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0897.lightning_broach/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 897
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"雷のブローチ","color":"yellow"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"攻撃対象3体に対象の現在体力に比例した割合ダメージを与える"}','{"translate":"-%1$s通常：現在体力の%2$s 1個増える毎に%3$s増加","with":[{"text":"\\u0002","font":"space"},{"text":"30%"},{"text":"10%"}]}','{"translate":"-%1$s天使：現在体力の%2$s 1個増える毎に%3$s増加","with":[{"text":"\\u0002","font":"space"},{"text":"1.5%"},{"text":"0.5%"}]}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    data modify storage asset:artifact RemainingCount set value 60
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "hotbar"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onAttack"
# 神器の最大発動回数 (int) (オプション)
    data modify storage asset:artifact PartsMax set value 3
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Thunder]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.BypassResist set value true
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 100
# MP必要量 (int) (オプション)
    data modify storage asset:artifact MPRequire set value 50
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 200
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableMPMessage set value true
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Nyaptov", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value

# 神器の入手用function
    function asset:artifact/common/give
