#> asset:object/1029.barrage_spirit/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1029/init

#> Private
# @private
    #declare score_holder $Random
    #declare tag 1029.SpiritInit

# playsound
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# 自分に一時的なタグ付け
    tag @s add 1029.SpiritInit

# 同IDのプレイヤーを特定
    execute store result score @s 1029.UserID run data get storage asset:context this.UserID
    execute as @a[distance=..60] if score @s UserID = @e[type=armor_stand,tag=1029.SpiritInit,distance=..0.01,limit=1] 1029.UserID run tag @s add 1029.OwnerPlayer

# もし仮に、他に召喚してるバラージュがいるならぶっ殺す（こういう処理しか思いつかんかった）
    execute as @e[type=armor_stand,scores={ObjectID=1029}] at @s if score @p[tag=1029.OwnerPlayer] UserID = @e[type=armor_stand,scores={ObjectID=1029},distance=..0.01,sort=nearest,limit=1] 1029.UserID run kill @s[tag=!1029.SpiritInit]

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..5

# メッセージ
    execute if score $Random Temporary matches 0 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Hello!","font":"illageralt"}]
    execute if score $Random Temporary matches 1 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I will help you!","font":"illageralt"}]
    execute if score $Random Temporary matches 2 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Where is your enemies?","font":"illageralt"}]
    execute if score $Random Temporary matches 3 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Let us do it!","font":"illageralt"}]
    execute if score $Random Temporary matches 4 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I am ready!","font":"illageralt"}]
    execute if score $Random Temporary matches 5 run tellraw @p[tag=1029.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"My master!","font":"illageralt"}]

# パーティクル
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10

# 頭防具
    item replace entity @s armor.head with stick{CustomModelData:20229}

# いきなり攻撃はしない
    scoreboard players set @s 1029.ActionTime -20

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $OwnerID Temporary
    tag @s remove 1029.SpiritInit
    tag @a remove 1029.OwnerPlayer
