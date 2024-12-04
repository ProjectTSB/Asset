#> asset:artifact/0981.soulfire_burst/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/981/click/

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.soul_sand.step player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.soul_sand.step player @a ~ ~ ~ 1.5 0.7

# デカい火の玉を放つ
    execute anchored eyes run summon armor_stand ^ ^ ^1 {Small:1b,Invisible:1b,Marker:1b,Tags:["R9.BigFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20233,CustomPotionColor:8639743}}}]}

# 火の玉にInit処理
    execute as @e[type=armor_stand,tag=R9.BigFireball,tag=R9.Init,distance=..3,sort=nearest,limit=1] run function asset:artifact/0981.soulfire_burst/click/big_fireball/1.init

# 火の玉を動かすShcheduleループ開始
    schedule function asset:artifact/0981.soulfire_burst/click/big_fireball/2.tick 1t
