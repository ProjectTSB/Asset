#> asset:artifact/1543.higan/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1543.higan/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1543
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:ender_eye"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"冥華刀 彼岸","color":"#b10d15"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"translate":"-%1$s10回攻撃するたび、%2$sを得る","color":"white","with":[{"text":"\\u0002","font":"space"},{"text":"冥華","color":"#b10d15"}]}','{"translate":"-%1$s%2$s状態の時、%3$sを1秒長押しして離すことで","color":"white","with":[{"text":"\\u0002","font":"space"},{"text":"冥華","color":"#b10d15"},{"keybind":"key.use"}]}','{"translate":"%1$s前方の敵に対して強力な斬撃を放つ","color":"white","with":[{"text":"\\u0008","font":"space"}]}','{"translate":"-%1$sこの攻撃を発動するたび、この戦闘の間","color":"white","with":[{"text":"\\u0002","font":"space"}]}','{"translate":"%1$s%2$s、%3$sを得る","color":"white","with":[{"text":"\\u0008","font":"space"},{"text":"この神器のダメージ+5%","color":"green"},{"text":"最大体力-10%","color":"red"}]}','{"translate":"%1$s(それぞれ最大%2$s、%3$s)","color":"white","with":[{"text":"\\u0008","font":"space"},{"text":"25%"},{"text":"-50%"}]}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onAttackByMelee"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Fire]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 10
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量 (int)
    # data modify storage asset:artifact MPHealWhenHit set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "shortRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 7
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Urban","Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
