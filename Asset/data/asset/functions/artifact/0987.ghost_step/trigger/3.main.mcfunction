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
    summon item_display ~ ~ ~ {item:{id:"minecraft:ender_pearl",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f]},billboard:"center",Glowing:1b,glow_color_override:5308671,Tags:["Projectile","Uninterferable","RF.First","RF.Bullet"],teleport_duration:1}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=item_display,tag=RF.First] ~ ~ ~ facing ^ ^ ^10
# ユーザーID適応
    scoreboard players operation @e[type=item_display,tag=RF.First] RF.UserID = @s UserID
# タグを消す
    tag @e[type=item_display,tag=RF.First] remove RF.First

# Scheduleループ
    schedule function asset:artifact/0987.ghost_step/trigger/4.schedule 1t replace
