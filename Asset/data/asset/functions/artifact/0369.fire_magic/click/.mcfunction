#> asset:artifact/0369.fire_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/369/click/

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:20,Tags:["A9.First","A9.Fire","Projectile"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=A9.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=A9.First] A9.UserID = @s UserID
# タグを消す
    tag @e[tag=A9.First] remove A9.First

# Scheduleループ
    schedule function asset:artifact/0369.fire_magic/click/3.1.tick 1t replace
