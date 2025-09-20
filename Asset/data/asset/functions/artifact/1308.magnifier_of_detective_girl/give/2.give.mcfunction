#> asset:artifact/1308.magnifier_of_detective_girl/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1308.magnifier_of_detective_girl/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1308
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"少女探偵の虫眼鏡","color":"#94b9f9"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"密室殺人！ミステリーじゃないですか〜！高まりますね～！","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "offhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onAttack"
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:artifact Condition set value '{"text":"物理属性で攻撃","color":"white"}'
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
    data modify storage asset:artifact MPCost set value 5
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value 0
# MP回復量 (int)
    # data modify storage asset:artifact MPHealWhenHit set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 0
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
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 補正
    data modify storage asset:artifact Equipment.Modifiers set value []
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"attack/physical",Amount:0.08d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"defense/physical",Amount:0.08d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"generic.knockback_resistance",Amount:0.3,Operation:"add"}

# 神器の入手用function
    function asset:artifact/common/give
