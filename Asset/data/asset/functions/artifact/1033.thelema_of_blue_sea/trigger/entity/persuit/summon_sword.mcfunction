#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword
#
# 剣を召喚する
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main

# 召喚
    summon item_display ^ ^ ^ {Tags:["SP.Entity","SP.Sword","SP.Init"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20344}},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# UserIDをコピー
    scoreboard players operation @e[type=item_display,tag=SP.Sword,tag=SP.Init,distance=..0.01,sort=nearest,limit=1] SP.UserID = @p[tag=SP.Owner] UserID

# Initタグを削除
    tag @e[type=item_display,tag=SP.Sword,tag=SP.Init,distance=..0.01,sort=nearest,limit=1] remove SP.Init

# 演出
    particle wax_off ~ ~ ~ 0 0 0 2 10 normal @a
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.5 0
