#> asset:artifact/0987.ghost_step/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0987.ghost_step/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound ogg:entity.squid.squirt2 player @a ~ ~ ~ 1 2
    playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5

# 弾を召喚
    summon area_effect_cloud ~ ~ ~ {Particle:"block air",Duration:50,Tags:["RF.First","RF.Bullet","Projectile"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=RF.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=RF.First] RF.UserID = @s UserID
# タグを消す
    tag @e[type=area_effect_cloud,tag=RF.First] remove RF.First

# Scheduleループ
    schedule function asset:artifact/0987.ghost_step/trigger/4.schedule 1t replace