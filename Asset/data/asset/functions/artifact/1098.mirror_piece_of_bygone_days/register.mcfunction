#> asset:artifact/1098.mirror_piece_of_bygone_days/register
#
# 神器の生成処理
#
# @within function asset:artifact/alias/1098/register

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1098
# 神器のベースアイテム
    data modify storage asset:artifact Item set value 'minecraft:stick'
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"在りし日の鏡片","color":"#BCDCE8"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"発動時、解除可能なデバフを1つ解除し"}','{"text":"最大体力+16%を20秒間得る。"}','{"text":"過去に砕け散った鏡の破片。","color":"gray"}','{"text":"割れた今でも過ぎ去った日々の風景を映している。","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "hotbar"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "attack"
# 効果が重複可能か否か (boolean) (オプション)
    # data modify storage asset:artifact EnableDuplication set value
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:artifact Condition set value '{"text":"20%の確率で発動"}'
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
    data modify storage asset:artifact MPCost set value 15
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 220
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableMPMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}
