#> asset:artifact/1045.mini_black_hole/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1045.mini_black_hole/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1045
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"T","color":"#32004F","bold":true,"obfuscated":true},{"text":"S","color":"#59008C","bold":true,"obfuscated":true},{"text":"B","color":"#7E00C7","bold":true,"obfuscated":true},{"text":"ブラックホール・ミニ","color":"#A100FF","bold":true,"obfuscated":false},{"text":"B","color":"#7E00C7","bold":true,"obfuscated":true},{"text":"S","color":"#59008C","bold":true,"obfuscated":true},{"text":"T","color":"#32004F","bold":true,"obfuscated":true}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"小さな紫の弾を前方に発射する","color":"white","italic":false}','{"text":"弾は着弾した瞬間にブラックホールを生み出し、","color":"white","italic":false}','{"text":"周囲の敵を無慈悲に吸い込む","color":"white","italic":false}','{"text":"宇宙の破壊力に叶うものはいないだろうに","color":"#B973FF","italic":false}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value 
# 使用回数 (int) (オプション)
    data modify storage asset:artifact RemainingCount set value 66
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value 
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value 125
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.BypassResist set value true
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "every"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 7
# MP消費量 (int) 
    data modify storage asset:artifact MPCost set value 100
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value 
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 400
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value 
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value 
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value 
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Nyaptov","Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give