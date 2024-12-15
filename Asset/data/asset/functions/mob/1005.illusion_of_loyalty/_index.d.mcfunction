#> asset:mob/1005.illusion_of_loyalty/_index.d
# @private

#> tag
# @within function asset:mob/1005.illusion_of_loyalty/**
    #declare tag RX.ModelRoot
    #declare tag RX.ModelRoot.Target

## マーカー
    #declare tag RX.Marker.Aim

#> 外部からも呼び出されるタグ
# @within function
#   asset:mob/1005.illusion_of_loyalty/**
#   asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/**
# 移動関連
    #declare tag RX.Move.Teleport

# スキルリスト
    #declare tag RX.Skill.AimingLaser
    #declare tag RX.Skill.AimingLaser.Direct
    #declare tag RX.Skill.AimingLaser.Advance
    #declare tag RX.Skill.SwordSpin
    #declare tag RX.Skill.HomingShot
    #declare tag RX.Skill.MeteorRain
    #declare tag RX.Skill.Meteor.1
    #declare tag RX.Skill.Meteor.2
    #declare tag RX.Skill.BlazingSlash

# 行動タグ
    #declare tag RX.InAction
