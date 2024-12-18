#> asset:mob/1004.tultaria/_index.d
# @private

#> tag
# @within function asset:mob/1004.tultaria/**

#declare storage rw_storage:

## ボスのモードに関するタグ
    #declare tag RW.Mode.Fire
    #declare tag RW.Mode.Water
    #declare tag RW.Mode.Thunder
    #declare tag RW.Mode.Light

## ボスの状態に関するタグ
    #declare tag RW.CanElementChange
    #declare tag RW.SkillSelected

## ボスの体と移動に関連するタグ
    #declare tag RW.Opening
    #declare tag RW.PlayerFacing
    #declare tag RW.TeleportMarker
    #declare tag RW.Move
    #declare tag RW.TickLock
    #declare tag RW.InAction
    #declare tag RW.DisableInertia
    #declare tag RW.Shield

## ボスのモデルに関するタグ
    #declare tag RW.ModelLocator.LeftHand
    #declare tag RW.ModelLocator.RightHand
    #declare tag RW.ModelRoot
    #declare tag RW.ModelRoot.Target

## ボスのマーカーに関するタグ
    #declare tag RW.RotateMarker
    #declare tag RW.Marker.SpawnPoint
    #declare tag RW.MarkerInit
    #declare tag RW.TeleportMarker
    #declare tag RW.BodyMarker
    #declare tag RW.MarkerInit
    #declare tag RW.Marker.Aim

## ボスのHPのタグ
    #declare tag RW.HPless75per
    #declare tag RW.HPless50per

## ボスの使う大技のタグ
    #declare tag RW.Transition.Phase2
    #declare tag RW.Transition.Phase2.Windup
    #declare tag RW.Transition.Phase2.Attack

    #declare tag RW.Transition.Phase3
    #declare tag RW.Transition.Phase3.Windup
    #declare tag RW.Transition.Phase3.Attack


## ボスの使う技のタグ
    # 火属性
        #declare tag RW.Skill.Meteor
        #declare tag RW.Skill.Hellfire
        #declare tag RW.Skill.BlazingCombo
    # 水属性
        #declare tag RW.Skill.FreezingShred
        #declare tag RW.Skill.SpinSlash
        #declare tag RW.Skill.AncientLight
        #declare tag RW.Skill.SwordRain
        #declare tag RW.Skill.HomingShot
    # 雷属性
        #declare tag RW.Skill.Thunder
        #declare tag RW.Skill.LightningStab
        #declare tag RW.Skill.AimingLaser
    # 無属性
        #declare tag RW.Skill.MoveShot
        #declare tag RW.Skill.SpreadShot
        #declare tag RW.Skill.Starfury
        #declare tag RW.Skill.Melee
    # フェイズ移行攻撃
        #declare tag RW.Skill.TransitionAttack2
        #declare tag RW.Skill.TransitionAttack3

## 雷攻撃は複数パターンあってもいいよね
    #declare tag RW.Skill.Thunder.1
    #declare tag RW.Skill.Thunder.2
    #declare tag RW.Skill.Thunder.3
    #declare tag RW.Skill.Thunder.4

## メテオ攻撃にも複数パターンあってもいいよね
    #declare tag RW.Skill.Meteor.1
    #declare tag RW.Skill.Meteor.2
    #declare tag RW.Skill.Meteor.3
    #declare tag RW.Skill.Meteor.4

## 剣の雨攻撃も複数パターンあります！
    #declare tag RW.Skill.SwordRain.1
    #declare tag RW.Skill.SwordRain.2
    #declare tag RW.Skill.SwordRain.3
    #declare tag RW.Skill.SwordRain.4

## ボスの飛び道具のタグ
    #declare tag RW.TargetMarker
    #declare tag RW.TargetMarkerInit
    #declare tag RW.ChainLightning.Common
    #declare tag RW.ChainLightning0
    #declare tag RW.ChainLightning1
    #declare tag RW.ChainLightning2
    #declare tag RW.ChainLightning3
    #declare tag RW.ChainLightning4
    #declare tag RW.ChainLightning5
    #declare tag RW.ChainLightning6
    #declare tag RW.ChainLightning7
    #declare tag RW.ChainLightning.Last

## Animated animated_java
    #declare function animated_java:tultaria/animations/neutral_air/play.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/stop.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/pause.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/resume.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/neutral_air/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_right/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_1_left/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_right/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_2_left/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_1/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_2/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_3/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_windup/tween.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/play.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/stop.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/pause.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/resume.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/attack_melee_4_active/tween.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/play.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/stop.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/pause.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/resume.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_back/tween.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/play.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/stop.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/pause.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/resume.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/next_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/set_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/apply_frame.mcfunction
	#declare function animated_java:tultaria/animations/dodge_side/tween.mcfunction
	#declare function animated_java:tultaria/animations/pause_all.mcfunction
    #declare function animated_java:tultaria/apply_default_pose.mcfunction
