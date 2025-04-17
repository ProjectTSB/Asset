#> asset:artifact/0557.catastrophe/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0557.catastrophe/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 557
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_boots"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"†","color":"white"},{"text":"カタストロフィ","color":"gray"},{"text":"†","color":"white"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"ノックバック耐性+2","color":"white"}','{"text":"最大体力-5%","color":"dark_red"}','{"text":""}','[{"text":"セット効果：","color":"white"},{"text":"†","color":"white"},{"text":"カタストロフィ","color":"gray"},{"text":"†","color":"white"}]','{"text":"計2000ダメージ与える、または被ダメージ時","color":"white"}','{"text":"対象または攻撃者に無属性ダメージ80を与え","color":"white"}','{"text":"攻撃+4%、耐性-2%を10秒間得る(最大10スタック)","color":"white"}','[{"text":"破滅の騎士のための装備","color":"gray"}]','[{"text":"傷付く度に、快楽を求めた","color":"gray"}]']
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
    #data modify storage asset:artifact Condition set value '{"text":"繋がる総てを身に纏う"}'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.Damage set value 600
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    #data modify storage asset:artifact AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {Unbreakable:1b,HideFlags:253,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;1,1,557,3],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1,1,557,3],Slot:"feet"}],Trim:{material:"minecraft:iron",pattern:"tsb_armor:554"}}

# 神器の入手用function
    function asset:artifact/common/give
