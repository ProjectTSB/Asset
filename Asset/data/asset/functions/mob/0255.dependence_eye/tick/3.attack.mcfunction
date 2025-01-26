#> asset:mob/0255.dependence_eye/tick/3.attack
#
#
#
# @within function asset:mob/0255.dependence_eye/tick/

# VFX
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 1

# ダメージ設定
    data modify storage lib: Argument.Damage set value 16f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"

# 補正実行
    function lib:damage/modifier

# リセット
    function lib:damage/reset

# クールタイム設定
    scoreboard players set @s 73.AttackCT 20
