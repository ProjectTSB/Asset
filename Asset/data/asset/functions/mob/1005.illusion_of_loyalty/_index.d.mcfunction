#> asset:mob/1005.illusion_of_loyalty/_index.d
# @private

#> 外部からも呼び出されるタグ
# @within function
#   asset:mob/1005.illusion_of_loyalty/**
#   asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/**
    # 移動関連
    #declare tag RX.Move.Teleport
    # スキルリスト
    #declare tag RX.Skill.AimingLaser
    #declare tag RX.Skill.SwordSpin
    #declare tag RX.Skill.HomingShot
    #declare tag RX.Skill.MeteorRain
    #declare tag RX.Skill.Meteor.1
    #declare tag RX.Skill.Meteor.2
    #declare tag RX.Skill.BlazingSlash
    #declare tag RX.Skill.Thunder
    #declare tag RX.Skill.Thunder.1
    #declare tag RX.Skill.Thunder.2
    # 行動タグ
    #declare tag RX.InAction

#> tag
# @within function asset:mob/1005.illusion_of_loyalty/**
    #declare tag RX.ModelRoot
    #declare tag RX.ModelRoot.Target
    # マーカー
    #declare tag RX.Marker.Aim
    # Animated Java
    #declare function animated_java:illusion_of_loyalty/animations/neutral_air/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_1_right/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_1_left/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_2_left/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_2_right/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_3_right/tween
    #declare function animated_java:illusion_of_loyalty/animations/attack_magic_3_right_loop/tween
    #declare function animated_java:illusion_of_loyalty/animations/dodge_back/tween
    #declare function animated_java:illusion_of_loyalty/summon
    #declare function animated_java:illusion_of_loyalty/remove/this
