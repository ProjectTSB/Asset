#> asset:artifact/1143.achilles/register
#
# 神器のデータ登録処理
#
# @within function asset:artifact/alias/1143/register

# 神器のID (int)
    data modify storage asset:artifact ID set value 1143
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "iron_leggings"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"アキレウス","color":"#ffffff"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"背後からダメージを受けると耐性と移動速度が大幅に低下する"}','{"text":"かのトロイアの英雄のように","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 最大発動回数 (int) (オプション)
    # data modify storage asset:artifact PartsMax set value 1
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "legs"
# 神器のトリガー (string) Wikiを参照
    # data modify storage asset:artifact Trigger set value
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
# MP回復量 (int)
    # data modify storage asset:artifact MPHealWhenHit set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
   # data modify storage asset:artifact TypeCooldown.Type set value
   # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value true
# 神器のサブトリガー (string[]) (オプション)
    data modify storage asset:artifact SubTriggers set value ["damage_entity"]
# 装備時効果 (int) (オプション)
    # data modify storage asset:artifact EquipID set value
# 装備時補正 ({Type: string, Amount: double, Operation: string, StackReduction: double}[]) (オプション)
    data modify storage asset:artifact Modifiers set value [{Type:"defense/base",Amount:0.20d,Operation:"multiply_base"},{Type:"generic.movement_speed",Amount:0.20d,Operation:"multiply_base"}]
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora","Urban","Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;1,1,1143,4],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1,1,1143,4],Slot:"legs"}]}
