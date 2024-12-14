#> asset:object/1052.maid/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1052/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Silent:1b,DeathTime:19s,Health:9999f,Tags:["Friend","ObjectInit","Uninterferable"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20401}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20402}}],ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:iron",pattern:"tsb_armor:20400"}}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:iron",pattern:"tsb_armor:20400"}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20403}}],Attributes:[{Name:"generic.max_health",Base:9999d},{Name:"generic.follow_range",Base:32d},{Name:"generic.knockback_resistance",Base:0.8},{Name:"generic.movement_speed",Base:0.4},{Name:"generic.attack_damage",Base:-99d}],DeathLootTable:"empty"}
