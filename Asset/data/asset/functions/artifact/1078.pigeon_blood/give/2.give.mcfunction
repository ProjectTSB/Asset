#> asset:artifact/1078.pigeon_blood/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1078.pigeon_blood/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1078
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"ピジョンブラッド","color":"#ffbfd4"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"translate":"- 使用時、%2$s%1$s%2$sを得る。","with":[{"translate":"[共鳴・%s]","color":"#ffdd66","with":[{"text":"紅","color":"#ffbfd4"}]},{"text":"\\u0002","font":"space"}]}','{"translate":"- %2$s%1$sの確率で、ダメージが%1$s%3$s%1$s増加する。","with":[{"text":"\\u0002","font":"space"},{"text":"20%","color":"aqua"},{"text":"50%","color":"aqua"}]}','{"translate":"- 自身または周囲のプレイヤーが%2$s%1$s%2$sを持っているとき、","with":[{"translate":"[共鳴・%s]","color":"#ffdd66","with":[{"text":"蒼","color":"#a1faf5"}]},{"text":"\\u0002","font":"space"}]}','{"translate":"\\uE003\\uF006 ダメージが%1$s%2$s%1$s増加する。","with":[{"text":"\\u0002","font":"space"},{"text":"20%","color":"aqua"}]}','{"translate":"- 周囲のプレイヤーが%2$s%1$s%2$sを持っているとき、","with":[{"translate":"[共鳴・%s]","color":"#ffdd66","with":[{"text":"蒼","color":"#a1faf5"}]},{"text":"\\u0002","font":"space"}]}','{"text":"\\uE003\\uF006 追撃が発生する。"}','{"text":"深き血の如き光を放つ、紅き少女の力の結晶。","color":"gray"}','{"text":"主の心の赴くまま、気まぐれに敵を斬り裂く。","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
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
    data modify storage asset:artifact AttackInfo.Damage set value [380,700]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 22
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value 8
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "shortRange"
    data modify storage asset:artifact TypeCooldown.Duration set value 10
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Nyaptov", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
