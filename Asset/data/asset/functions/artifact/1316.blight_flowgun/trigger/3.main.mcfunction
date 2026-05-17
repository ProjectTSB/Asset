#> asset:artifact/1316.blight_flowgun/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1316.blight_flowgun/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 調整班へ
# もしエフェクトの属性を弄る、ということがあるならエフェクトの説明も忘れず変えてください

# 矢を消費
    clear @s #arrows 1

# 演出
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0.9

# 数値設定
    # 矢のダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 400f
    # 毒ダメージ
        data modify storage api: Argument.FieldOverride.PoisonDamage set value 100f
    # デバフの効果時間
        data modify storage api: Argument.FieldOverride.Duration set value 160
    # ダメージ間隔
        data modify storage api: Argument.FieldOverride.Interval.Max set value 10
    # 弾速 (1tickにつき(値 * 0.5)ブロック)
        data modify storage api: Argument.FieldOverride.Speed set value 5
    # 最大射程 ( (値/2)ブロックが最大射程)
        data modify storage api: Argument.FieldOverride.Range set value 40

# 矢を発射
    data modify storage api: Argument.ID set value 1157
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.ElementType set value "None"
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^-0.1 ^ run function api:object/summon
