#> asset:mob/0255.dependence_eye/tick/3.attack
#
#
#
# @within function asset:mob/0255.dependence_eye/tick/

# VFX
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 1

# ダメージ設定
    data modify storage api: Argument.Damage set value 16f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# 補正実行
    function api:damage/modifier

# リセット
    function api:damage/reset

# クールタイム設定
    scoreboard players set @s 73.AttackCT 20
