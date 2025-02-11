#> asset:artifact/0342.super_dragon_bell/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/342/click/

# 演出
    playsound entity.horse.gallop player @a ~ ~ ~ 1.0 0.5
    playsound block.bell.use player @a ~ ~ ~ 1.0 1.5
    particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30
# スーパードラゴン召喚
    summon horse ~ ~0.1 ~ {Health:0.1f,CustomName:'[{"text":"スーパードラゴン","color":"aqua"}]',CustomNameVisible:1b,Tame:1b,Variant:0,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{TSB:{ItemMetaData:["BanEntityConditionItem","BanPossession"]}}},DeathLootTable:"minecraft:empty",active_effects:[{id:"jump_boost",amplifier:18b,duration:999999,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:0.1d},{Name:"horse.jump_strength",Base:2.0d},{Name:"generic.movement_speed",Base:0.6d}],Tags:["Friend"]}
