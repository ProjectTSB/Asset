#> asset:mob/0444.super_dragon/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/444/summon

# 元となるEntityを召喚する
    summon horse ~ ~ ~ {Tags:["MobInit"],Tame:1b,Variant:0,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{TSB:{ItemMetaData:["BanEntityConditionItem","BanPossession"]}}},DeathLootTable:"minecraft:empty",Attributes:[{Name:"horse.jump_strength",Base:2.0d}]}
