#> asset:artifact/0558.solitariness/register
#
# 神器の生成処理
#
# @within function asset:artifact/alias/558/register

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 558
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:chainmail_helmet"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"۞","color":"dark_gray"},{"text":"ソリタリネス","color":"gray"},{"text":"۞","color":"dark_gray"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"孤独が唯一の友人だった。"}]']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "head"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "attack_melee"
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:artifact Condition set value '[{"text":"繋がる総てを身に纏い、蕭然の中に在る"}]'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value 10
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.BypassResist set value false
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 5
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {HideFlags:64,Enchantments:[{id:unbreaking,lvl:3},{id:protection,lvl:5}],AttributeModifiers:[{UUID:[I;1,1,558,6],AttributeName:"generic.armor",Name:"armor",Amount:3,Operation:0,Slot:head}]}
