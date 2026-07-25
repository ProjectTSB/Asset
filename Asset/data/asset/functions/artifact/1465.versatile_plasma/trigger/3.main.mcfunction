#> asset:artifact/1465.versatile_plasma/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1465.versatile_plasma/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# Fieldを設定
    data modify storage api: Argument.FieldOverride.DamagePool set value [30, 150, 300]
    data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
    data modify storage api: Argument.FieldOverride.ElementType set value "Thunder"
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound block.iron_door.open player @a ~ ~ ~ 2 0.5
