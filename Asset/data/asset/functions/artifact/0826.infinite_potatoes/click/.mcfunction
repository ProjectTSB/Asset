#> asset:artifact/0826.infinite_potatoes/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/826/click/

# 演出
    playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 2.0
    particle minecraft:squid_ink ~ ~1 ~ 0.4 0 0.4 0.01 10 force

# じゃがいもを1つ発動者に与える
    give @s potato

# 骨粉消費
    execute if predicate lib:random_pass_per/25 run clear @s bone_meal 1
