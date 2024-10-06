#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/windup
#
# 予備動作
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick

# 演出
    particle dust 100000000 0.8 0.8 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/staff_swing_1/play

# 行動をランダムに選択
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # フェイズ1
        scoreboard players operation $Random Temporary %= $2 Const

# デバッグ用、実行する技を確定させる
    scoreboard players set $Random Temporary 1

# タグ付与
    # 1
        execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Meteor.1
    # 2
        execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Meteor.2
    # 3
        execute if score $Random Temporary matches 2 run tag @s add RW.Skill.Meteor.3
    # 4
        execute if score $Random Temporary matches 3 run tag @s add RW.Skill.Meteor.4
