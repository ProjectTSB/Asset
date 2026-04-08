#> asset:mob/0205.skull_soldier/tick/event/switch_melee
#
# 近接への持ち替え操作
#
# @within function asset:mob/0205.skull_soldier/tick/

# VFX
    playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# 持ち替え
# 攻撃力のない石の斧に切り替える
    item replace entity @s weapon.mainhand with minecraft:stone_axe{AttributeModifiers:[]}

# リセット
    tag @s add 5P.Melee
