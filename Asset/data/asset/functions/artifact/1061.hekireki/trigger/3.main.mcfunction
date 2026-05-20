#> asset:artifact/1061.hekireki/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1061.hekireki/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# チャージバフ取得
    data modify storage api: Argument.ID set value 323
    function api:entity/mob/effect/get/from_id

# チャージ段階をFieldOverrideへ
    data modify storage api: Argument.FieldOverride.Charge set from storage api: Return.Effect.Stack

# チャージ段階に応じてダメージを変える

    # 第1段階
        execute if data storage api: Argument.FieldOverride{Charge:1} run data modify storage api: Argument.FieldOverride.Damage set value 2700
        execute if data storage api: Argument.FieldOverride{Charge:1} run data modify storage api: Argument.FieldOverride.Speed set value 5

    # 第2段階
        execute if data storage api: Argument.FieldOverride{Charge:2} run data modify storage api: Argument.FieldOverride.Damage set value 3250
        execute if data storage api: Argument.FieldOverride{Charge:2} run data modify storage api: Argument.FieldOverride.Speed set value 8

    # 第3段階
        execute if data storage api: Argument.FieldOverride{Charge:3} run data modify storage api: Argument.FieldOverride.Damage set value 3250
        execute if data storage api: Argument.FieldOverride{Charge:3} run data modify storage api: Argument.FieldOverride.Speed set value 15
        execute if data storage api: Argument.FieldOverride{Charge:3} run data modify storage api: Argument.FieldOverride.ThunderDamage set value 720

# Object召喚
    data modify storage api: Argument.ID set value 1143
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
