#> asset:artifact/1029.conviction_bone/trigger/shot/summon
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/sword/sword_kill

#　演出
    particle minecraft:soul ~ ~ ~ 0 0 0 0.05 20 normal

# 魚召喚
    summon marker ~ ~ ~ {Tags:["SL.Shot","SL.First","Object"]}
# 魚の寿命を設定する
    scoreboard players set @e[type=marker,tag=SL.First,distance=..10,sort=nearest] SL.ShotTime 60

# ユーザーID適応
    scoreboard players operation @e[type=marker,tag=SL.First,distance=..10,sort=nearest] SL.UserID = @s UserID

# プレイヤーに一回タグ付け
    tag @s add SL.This

# プレイヤーと逆方向を見る
    execute as @e[type=marker,tag=SL.First,distance=..10,sort=nearest] at @s facing entity @p[tag=SL.This,distance=..10] eyes rotated ~ 0 run tp @s ~ ~ ~ ~180 0

# タグを消す
    tag @s remove SL.This
    tag @e[type=marker,tag=SL.First,distance=..10,sort=nearest] remove SL.First

# 再帰先へ飛ばす
    execute as @e[type=marker,tag=SL.Shot,limit=1] run function asset:artifact/1029.conviction_bone/trigger/shot/schedule
