#> asset:artifact/0265.holy_symbol_lv.5/register
#
# 神器の生成処理
#
# @within function asset:artifact/alias/265/register

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 265
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"ホーリーシンボル レベル5"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"聖なる魔法陣を生成し"}','{"text":"発動者および味方の精神を浄化する。"}','""','{"text":"[詳細]","color":"#ffde6e"}','[{"text":"1秒ごとにMPを","color":"white"},{"text":"9%","color":"#6e99ff"},{"text":"回復する。","color":"white"}]','{"text":"16秒間、物理/魔法ダメージ、攻撃速度が","color":"white"}','[{"text":"9","color":"#6e99ff"},{"text":"%増加する。","color":"white"}]']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "click"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
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
    data modify storage asset:artifact MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    data modify storage asset:artifact SpecialCooldown set value 3600
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Nyaptov", "Wi-ki"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}
