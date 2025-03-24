#> asset:mob/0106.mini_shulker/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/106/summon

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Silent:1b,DeathLootTable:"entities/shulker",NoAI:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","Immovable"],Passengers:[{id:"item_display",Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"],item:{id:"stick",Count:1b,tag:{CustomModelData:20456}}}]}
