#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/windup
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/phase2

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item_display,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20507}
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item_display,sort=nearest,limit=1] container.0 with minecraft:air

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
