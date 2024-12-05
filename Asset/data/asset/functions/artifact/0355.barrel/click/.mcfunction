#> asset:artifact/0355.barrel/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/355/click/

# 樽召喚
    execute at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..8] run summon armor_stand ~ ~1.8 ~ {Tags:["9V.Barrel","Projectile","Uninterferable"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}]}
# tick予約
    schedule function asset:artifact/0355.barrel/click/3.1.tick_base 1t replace
# 演出
    particle happy_villager ~ ~ ~ 0.5 0.5 0.5 1 30
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.5
