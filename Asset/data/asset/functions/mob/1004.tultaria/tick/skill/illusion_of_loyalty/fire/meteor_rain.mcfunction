#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/fire/meteor_rain
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/**

# 幻影にタグ付与など
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.InAction
    tag @e[type=wither_skeleton,scores={MobID=1005},distance=..64] add RX.Skill.MeteorRain
    scoreboard players set @e[type=wither_skeleton,scores={MobID=1005},distance=..64] General.Mob.Tick -1

# メテオのパターン選択: 一体しかいない場合はパターン1のみを使うようになる
    tag @e[type=wither_skeleton,scores={MobID=1005},sort=nearest,limit=1] add RX.Skill.Meteor.1
    tag @e[type=wither_skeleton,tag=!RX.Skill.Meteor.1,scores={MobID=1005},sort=nearest,limit=1] add RX.Skill.Meteor.2
