#> asset:artifact/0735.collision_plate/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/735/attack_melee/

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1.5 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run particle minecraft:item iron_ingot ~ ~ ~ 1 1 1 0.1 40

# まず防具と防具強度をスコアに代入
    execute store result score $KF.Armor Temporary run attribute @s generic.armor get 1.0
    execute store result score $KF.ArmorTough Temporary run attribute @s generic.armor_toughness get 1

# 計算結果をArgument.Damageに代入
    execute store result storage lib: Argument.Damage float 20.0 run scoreboard players operation $KF.Armor Temporary += $KF.ArmorTough Temporary

# ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/

# スコアとかストレージとかリセット
    function lib:damage/reset
    scoreboard players reset $KF.Armor Temporary
    scoreboard players reset $KF.ArmorTough Temporary
