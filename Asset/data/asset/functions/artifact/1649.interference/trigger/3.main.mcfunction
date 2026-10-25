#> asset:artifact/1649.interference/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1649.interference/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# Object1217を召喚
    data modify storage api: Argument.ID set value 1217
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    #ベースのダメージ
    data modify storage api: Argument.FieldOverride.Damage set value 200
    #強化状態の持続時間
    data modify storage api: Argument.FieldOverride.ReinforcementTimer set value 5
    #強化状態での威力バフ
    data modify storage api: Argument.FieldOverride.DamageMultiplier set value 1.5
    #追撃の威力
    data modify storage api: Argument.FieldOverride.AdditionalDamage set value 150
    execute anchored eyes positioned ^ ^-0.4 ^ run function api:object/summon
