#> asset:artifact/0820.jewel_rod_of_horai/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0820.jewel_rod_of_horai/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 820
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"蓬莱の玉の枝","color":"yellow"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"美しい実をつけた枝。","color":"white"}','{"text":"同種の宝を装備しているほど力を発揮する。","color":"white"}','{"text":"インベントリにある竹取の宝具1種類につき攻撃回数が1増え、","color":"white"}','{"text":"MP回復量が5%上昇する。","color":"white"}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value ["130x1","130x5"]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 12
# MP消費量 (int)
    #data modify storage asset:artifact MPCost set value 69
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量
    data modify storage asset:artifact MPHealWhenHit set value 10
# 神器のクールダウン (int) (オプション)
    #data modify storage asset:artifact LocalCooldown set value 25
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "longRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 40
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
