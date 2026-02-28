#> asset:artifact/1270.raging_passion_pickaxe/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1270.raging_passion_pickaxe/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1270
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"熱狂ツルハシ","color":"red"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"translate":"-%1$s使用後、20秒間採掘速度が上昇する","color":"white","with":[{"text":"\\u0002","font":"space"}]}','{"translate":"-%1$s前へ自立して進む3つのツルハシを召喚し","color":"white","with":[{"text":"\\u0002","font":"space"}]}','{"translate":"%1$s接触した敵にダメージを与える","color":"white","with":[{"text":"\\u0008","font":"space"}]}','{"translate":"%1$sこの攻撃及びMP回復は大きな敵に対して大きく減衰する","with":[{"text":"\\u0008","font":"space"}]}','{"text":"強烈なマインソウルのエネルギーを浴び続け","color":"gray"}','{"text":"ついに意思を持ち、自分で動き始めたとされるが","color":"gray"}','{"text":"ブロックを掘る力はまだ得ていないようだ","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value [150]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Fire]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "every"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 20
# MP消費量 (int)
    # data modify storage asset:artifact MPCost set value
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量 (int)
    data modify storage asset:artifact MPHealWhenHit set value 8.2
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 100
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "longRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 60
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Urban", "Nyaptov", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
