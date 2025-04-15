#> asset:artifact/1201.deadly_poison_flowgun/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1201.deadly_poison_flowgun/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 矢を消費
    clear @s #arrows 1

# 演出
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0.9

# 矢を発射
    data modify storage api: Argument.ID set value 1109
    data modify storage api: Argument.FieldOverride.Damage set value 70f
    data modify storage api: Argument.FieldOverride.PoisonDamage set value 120f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^-0.1 ^ run function api:object/summon
