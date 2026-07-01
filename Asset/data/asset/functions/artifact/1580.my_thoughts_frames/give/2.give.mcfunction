#> asset:artifact/1580.my_thoughts_frames/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/1580.my_thoughts_frames/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 1580
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"『創","color":"#A6EFFF"},{"text":"想","color":"#A6EFFF"},{"text":"の","color":"#A6EFFF"},{"text":"額","color":"#A6EFFF"},{"text":"縁』","color":"#A6EFFF"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"付近の敵に攻撃を行う筆を召喚する。"}','{"text":"召喚者のMPが80%以上ある時、攻撃時に3.1416%でMPを120消費し大技を繰り出す"}','{"text":"大技では水属性範囲ダメージを与え、敵の水属性耐性を5秒の間-10%下げる"}','{"text":"「まだ喉元に噛みつく牙はある？」","color":"gray"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.stick"}'
    # data modify storage asset:artifact ConsumeItem.Count set value 1
    # data modify storage asset:artifact ConsumeItem.Extra set value 
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value 
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value 'onClick'
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value 
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value "8-12 / 400-600"
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Water]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value 
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value 'probability'
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value 
# MP消費量 (int) 
    data modify storage asset:artifact MPCost set value 90
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value 
# MP回復量 (int) 
    # data modify storage asset:artifact MPHealWhenHit set value 
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value 
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact TypeCooldown.Type set value "summon"
    data modify storage asset:artifact TypeCooldown.Duration set value 700
# 第二種別クールダウン ({Type: string, Duration: int}) (オプション)
    data modify storage asset:artifact SecondaryTypeCooldown.Type set value "longRange"
    data modify storage asset:artifact SecondaryTypeCooldown.Duration set value 160
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value 
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value 
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value 
# 破壊時の音を鳴らさないかどうか (boolean) (オプション)
    # data modify storage asset:artifact DisableBreakSound set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give
