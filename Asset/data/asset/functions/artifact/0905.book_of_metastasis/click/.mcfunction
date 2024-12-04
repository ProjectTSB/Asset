#> asset:artifact/0905.book_of_metastasis/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/905/click/


# 弾を飛ばす


# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound ogg:entity.squid.squirt2 player @a ~ ~ ~ 1 2
    playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:50,Tags:["P5.First","P5.Bullet","Projectile"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=P5.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=P5.First] P5.UserID = @s UserID
# タグを消す
    tag @e[type=area_effect_cloud,tag=P5.First] remove P5.First

# Scheduleループ
    schedule function asset:artifact/0905.book_of_metastasis/click/4.schedule 1t replace