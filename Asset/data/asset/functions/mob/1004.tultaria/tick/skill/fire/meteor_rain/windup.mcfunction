#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/windup
#
# 予備動作
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# フェイズ3だったら足場破壊
#    execute if score @s RW.Phase matches 3.. run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/break_platform

# 行動をランダムに選択
    execute store result score $Random Temporary run random value 0..1

# デバッグ用、実行する技を確定させる
#    scoreboard players set $Random Temporary 1

# タグ付与
    # 1
        execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Meteor.1
    # 2
        execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Meteor.2
    # 3
        execute if score $Random Temporary matches 2 run tag @s add RW.Skill.Meteor.3
    # 4
        execute if score $Random Temporary matches 3 run tag @s add RW.Skill.Meteor.4

# リセット
    scoreboard players reset $Random Temporary

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}
