#> asset:artifact/0665.soul_fire_armor/register
#
# 神器の生成処理
#
# @within function asset:artifact/alias/665/register

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 665
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_chestplate"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"魂炎纏","color":"#01A7AC","bold":true}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"魂炎を纏う者に代償を。","color":"#017C80","italic":true}]','[{"text":"代償背負いし者へ力を。","color":"#017C80","italic":true}]']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "chest"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "attack"
# 神器のサブトリガー (string[]) (オプション)
    data modify storage asset:artifact SubTriggers set value ["equip"]
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value 80
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Fire]
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
    data modify storage asset:artifact LocalCooldown set value 20
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# セット装備のID (int) (オプション)
    data modify storage asset:artifact EquipID set value 232
# 装備時補正 (Compound[]) (オプション)
    data modify storage asset:artifact Modifiers set value []
    data modify storage asset:artifact Modifiers append value {Type:"attack/physical",Amount:0.025d,Operation:"multiply_base"}
    data modify storage asset:artifact Modifiers append value {Type:"attack/fire",Amount:0.05d,Operation:"multiply_base"}
    data modify storage asset:artifact Modifiers append value {Type:"defense/fire",Amount:0.10d,Operation:"multiply_base"}
    data modify storage asset:artifact Modifiers append value {Type:"mp_regen",Amount:0.02d,Operation:"multiply_base"}
    data modify storage asset:artifact Modifiers append value {Type:"max_health",Amount:-0.10d,Operation:"multiply_base"}
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Urban", "Nyaptov", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {HideFlags:253,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;1,1,665,5],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1,1,665,5],Slot:"chest"}],Trim:{material:"minecraft:iron",pattern:"tsb_armor:664"}}
