#> asset:artifact/0561.solitariness/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0561.solitariness/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 561
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_boots"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"ソリタリネス","color":"#468581"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"孤独が唯一の友人だった","color":"dark_gray"}','{"text":"私は孤独だ、友人もなく、家族もない","color":"dark_gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "feet"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "equipping"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value '[{"text":"ソリタリネスをすべて装備し、孤独な状態"}]'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.Damage set value
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.AttackType set value
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.ElementType set value
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.BypassResist set value false
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    #data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# 装備時効果 ({ID: int, Visible: boolean}[]) (オプション)
    data modify storage asset:artifact Equipment.Effects set value [{ID:236,Visible:true,IsSetEffect:true}]
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {HideFlags:253,AttributeModifiers:[{UUID:[I;1,1,561,3],AttributeName:"generic.armor",Name:"armor",Slot:feet,Operation:0,Amount:3}],Trim:{material:"minecraft:iron",pattern:"tsb_armor:558"}}

# 神器の入手用function
    function asset:artifact/common/give
