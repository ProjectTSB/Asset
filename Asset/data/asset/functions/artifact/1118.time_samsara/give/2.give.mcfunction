#> asset:artifact/1118.time_samsara/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1118.time_samsara/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1118
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_helmet"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"時廻り","color":"#E17DFF"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"絶望感のある置き時計"}','{"text":"頭に被ると周囲の敵を勝手に攻撃する"}','{"text":"鐘の音が鳴る...","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "head"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "passive"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value "12x41"
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 12
# MP消費量 (int)
    # data modify storage asset:artifact MPCost set value
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量 (int)
    data modify storage asset:artifact MPHealWhenHit set value 2.4
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 480
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableMPMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {HideFlags:132,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1,1,1118,6],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1,1,1118,6],Slot:"head"}],Trim:{material:"minecraft:iron",pattern:"tsb_armor:1118"}}
# 神器の入手用function
    function asset:artifact/common/give
