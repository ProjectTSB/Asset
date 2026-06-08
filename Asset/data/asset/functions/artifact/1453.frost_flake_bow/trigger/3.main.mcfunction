#> asset:artifact/1453.frost_flake_bow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1453.frost_flake_bow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く



# チャージ段階をFieldOverrideへ
    data modify storage api: Argument.FieldOverride.Charge set from storage api: Return.Effect.Stack

# 2段チャージ済みなら炸裂ダメージを追加
        data modify storage api: Argument.FieldOverride.Damage set value 500
        data modify storage api: Argument.FieldOverride.Speed set value 7
        execute if score @s Ffb.Charge matches 30.. run data modify storage api: Argument.FieldOverride.ThunderDamage set value 720

# Object召喚
    data modify storage api: Argument.ID set value 1143
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
