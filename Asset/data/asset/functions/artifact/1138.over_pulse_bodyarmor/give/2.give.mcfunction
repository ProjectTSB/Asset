#> asset:artifact/1138.over_pulse_bodyarmor/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1138.over_pulse_bodyarmor/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1138
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:leather_chestplate"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"オーバーパルス・ボディアーマー","color":"#44bbff"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"暫くダメージを受けていない場合、"}','{"translate":"衝撃を吸収する電磁バリアを最大体力の %s 分生成する。","with":[{"text":"2.5%","color":"aqua"}]}','{"translate":"他部位を装備するごとにバリアの生成量が %s 増加する。","with":[{"text":"100%","color":"aqua"}]}','{"text":"─ 電磁バリア 展開。","color":"gray","italic":true}','{"text":"─ 魔術干渉ニ 注意シテクダサイ。","color":"gray","italic":true}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "chest"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "passive"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value '{"text":"最大稼働時"}'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.Damage set value [300-1000]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.ElementType set value [Thunder]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value every
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value 3
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 40
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 400
# 種別クールダウン (Compound) (オプション)
    # data modify storage asset:artifact TypeCooldown set value {Type:"",Value:0}
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisabledFlag.Check.CDMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisabledFlag.Check.MPMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisabledFlag.Use.BreakSound set value
# 装備時効果 (int) (オプション)
    data modify storage asset:artifact Equipment.Effects set value [{ID:274,Visible:false}]
# 装備時ステータス補正 ({Type: string, Amount: double, Operation: string, StackReduction?: double}[]) (オプション)
    data modify storage asset:artifact Equipment.Modifiers set value []
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"attack/thunder",Amount:0.05d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"defense/physical",Amount:0.05d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"defense/thunder",Amount:0.05d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"defense/magic",Amount:-0.025d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"defense/water",Amount:-0.05d,Operation:"multiply_base"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"generic.armor",Amount:7d,Operation:"add"}
    data modify storage asset:artifact Equipment.Modifiers append value {Type:"generic.armor_toughness",Amount:2.5d,Operation:"add"}
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Urban","Wi-ki","Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {display:{color:13421772},HideFlags:198,Unbreakable:1b,AttributeModifiers:[],Trim:{material:"diamond",pattern:"host"}}

# 神器の入手用function
    function asset:artifact/common/give
