#> asset:artifact/1029.conviction_bone/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1029/click/


# 演出
    particle end_rod ~ ~1.2 ~ 0 0 0 0.6 30 normal
    particle squid_ink ~ ~ ~ 2 2 2 0 300 normal
    playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 0.8

# 剣召喚
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["SL.Sword","SL.First","Object"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20349}}}

# 剣の寿命を設定する
    scoreboard players set @e[type=item_display,tag=SL.First] SL.SwordTime 60

# ユーザーID適応
    scoreboard players operation @e[type=item_display,tag=SL.First] SL.UserID = @s UserID

# タグを消す
    tag @e[type=item_display,tag=SL.First] remove SL.First

# 再帰先へ飛ばす
    execute as @e[type=item_display,tag=SL.Sword,limit=1] run function asset:artifact/1029.conviction_bone/click/sword/schedule
