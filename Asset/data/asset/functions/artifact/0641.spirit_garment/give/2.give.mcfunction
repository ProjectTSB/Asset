#> asset:artifact/0641.spirit_garment/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0641.spirit_garment/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 641
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_boots"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"精霊の詩衣","color":"#B0FFD7"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"回復量+6% 最大体力+4","color":"light_purple"}]','[{"text":"物理耐性-5%","color":"dark_red"}]','[{"text":"精霊への詩を紡ぐ者が纏う衣。","color":"gray"}]','[{"text":"その衣を纏う者は癒しの力を得る。","color":"gray"}]']
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
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackType set value [Physical,Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.ElementType set value [Fire,Water,Thunder,None]
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
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {HideFlags:253,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3.5,Operation:0,UUID:[I;1,1,61,3],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1,1,61,3],Slot:"feet"}],Trim:{material:"minecraft:iron",pattern:"tsb_armor:638"}}

# 神器の入手用function
    function asset:artifact/common/give
