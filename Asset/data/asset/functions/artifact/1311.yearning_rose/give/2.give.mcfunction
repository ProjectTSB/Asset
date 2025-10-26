#> asset:artifact/1311.yearning_rose/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1311.yearning_rose/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1311
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"渇望する薔薇","color":"dark_red"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"translate":"-%1$s被ダメージ量の30倍のダメージを攻撃者に与える(最大2000)","with":[{"text":"\\u0002","font":"space"}]}','{"translate":"-%1$s被ダメージ量の%2$s分体力を回復する(最大20)","with":[{"text":"\\u0002","font":"space"},{"text":"30%"}]}','{"translate":"-%1$sこの回復効果で累計50回復するたび","with":[{"text":"\\u0002","font":"space"}]}','{"translate":"%1$s%2$sと%3$sを15秒間得る","with":[{"text":"\\u0008","font":"space"},{"text":"攻撃+10%","color":"green"},{"text":"与回復量+10%","color":"green"}]}','{"text":"血を吸い深紅に咲いた薔薇の一輪","color":"gray"}','{"text":"尽きぬ渇きのまま、更なる血を求め根を伸ばす","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "offhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onDamageFromEntity"
# 効果が重複可能か否か (boolean) (オプション)
    # data modify storage asset:artifact EnableDuplication set value
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:artifact Condition set value '{"text":"属性攻撃で被ダメージ","color":"white"}'
# 神器の最大発動回数 (int) (オプション)
    data modify storage asset:artifact PartsMax set value 1
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value [0,2000]
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
    data modify storage asset:artifact MPCost set value 40
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# MP回復量 (int)
    # data modify storage asset:artifact MPHealWhenHit set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value 200
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# 第二種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact SecondaryTypeCooldown.Type set value
    # data modify storage asset:artifact SecondaryTypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableMPMessage set value true
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Nyaptov", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}


# 神器の入手用function
    function asset:artifact/common/give
