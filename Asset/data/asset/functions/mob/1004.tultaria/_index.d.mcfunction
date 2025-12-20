#> asset:mob/1004.tultaria/_index.d
# @private

#> ボスのモードに関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Mode.Fire
    #declare tag RW.Mode.Water
    #declare tag RW.Mode.Thunder
    #declare tag RW.Mode.Light

#> ボスの状態に関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.CanElementChange
    #declare tag RW.SkillSelected
    #declare tag RW.Shield
    #declare tag RW.Break

#> ボスの体と移動に関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Opening
    #declare tag RW.PlayerFacing
    #declare tag RW.TeleportMarker
    #declare tag RW.Move
    #declare tag RW.TickLock
    #declare tag RW.InAction
    #declare tag RW.DisableInertia

#> ボスのモデルに関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.ModelLocator.LeftHand
    #declare tag RW.ModelLocator.RightHand
    #declare tag RW.ModelRoot
    #declare tag RW.ModelRoot.Target
    #declare tag RW.Model.RightHandItem

#> ボスのマーカーに関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.RotateMarker
    #declare tag RW.Marker.SpawnPoint
    #declare tag RW.MarkerInit
    #declare tag RW.TeleportMarker
    #declare tag RW.BodyMarker
    #declare tag RW.Marker.Aim

#> ボスの使う大技に関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Transition.Phase2
    #declare tag RW.Transition.Phase2.Attack
    #declare tag RW.Transition.Phase3
    #declare tag RW.Transition.Phase3.Attack

#> 多段ヒット防止
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.TargetEntity

#> ボスのモードに関するタグ - 火属性
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Skill.Meteor
    #declare tag RW.Skill.Meteor.1
    #declare tag RW.Skill.Meteor.2
    #declare tag RW.Skill.Meteor.3
    #declare tag RW.Skill.Meteor.4
    #declare tag RW.Skill.MoveShot
    #declare tag RW.Skill.BlazingCombo

#> ボスのモードに関するタグ - 水属性
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Skill.SpinSlash
    #declare tag RW.Skill.SwordRain
    #declare tag RW.Skill.SwordRain.1
    #declare tag RW.Skill.SwordRain.2
    #declare tag RW.Skill.SwordRain.3
    #declare tag RW.Skill.SwordRain.4
    #declare tag RW.Skill.HomingShot

#> ボスのモードに関するタグ - 雷属性
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Skill.Thunder
    #declare tag RW.Skill.Thunder.1
    #declare tag RW.Skill.Thunder.2
    #declare tag RW.Skill.Thunder.3
    #declare tag RW.Skill.Thunder.4
    #declare tag RW.Skill.LightningStab
    #declare tag RW.Skill.AimingLaser

#> ボスのモードに関するタグ - 無属性
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.Skill.Starfury

#> 足場のEntityのタグ
# @within function asset:mob/1004.tultaria/tick/reset_arena
    #declare tag 2026.Layer

#> ボスの飛び道具に関するタグ
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.ChainLightning.Common
    #declare tag RW.ChainLightning1
    #declare tag RW.ChainLightning2
    #declare tag RW.ChainLightning3
    #declare tag RW.ChainLightning4
    #declare tag RW.ChainLightning5
    #declare tag RW.ChainLightning6

#> AJ
# @within function asset:mob/1004.tultaria/**
    #declare function animated_java:tultaria/summon
    #declare function animated_java:tultaria/animations/neutral_air/tween
    #declare function animated_java:tultaria/animations/attack_magic_1_right/tween
    #declare function animated_java:tultaria/animations/attack_magic_1_left/tween
    #declare function animated_java:tultaria/animations/attack_magic_2_right/tween
    #declare function animated_java:tultaria/animations/attack_magic_2_left/tween
    #declare function animated_java:tultaria/animations/attack_magic_3_right/tween
    #declare function animated_java:tultaria/animations/attack_magic_3_right/tween
    #declare function animated_java:tultaria/animations/attack_magic_3_right_loop/tween
    #declare function animated_java:tultaria/animations/attack_melee_1/tween
    #declare function animated_java:tultaria/animations/attack_melee_1/tween
    #declare function animated_java:tultaria/animations/attack_melee_2/tween
    #declare function animated_java:tultaria/animations/attack_melee_2/tween
    #declare function animated_java:tultaria/animations/attack_melee_3/tween
    #declare function animated_java:tultaria/animations/attack_melee_3/tween
    #declare function animated_java:tultaria/animations/attack_melee_4_windup/tween
    #declare function animated_java:tultaria/animations/attack_melee_4_active/tween
    #declare function animated_java:tultaria/animations/dodge_back/tween
    #declare function animated_java:tultaria/animations/dodge_side/tween
    #declare function animated_java:tultaria/animations/break/tween
    #declare function animated_java:tultaria/animations/break_loop/tween
    #declare function animated_java:tultaria/animations/pause_all
    #declare function animated_java:tultaria/apply_default_pose
    #declare function animated_java:tultaria/remove/this
    #declare function animated_java:tultaria/variants/winged/apply
    #declare function animated_java:tultaria/variants/face_eyehalf/apply
    #declare function animated_java:tultaria/variants/face_eyeclose/apply
    #declare function animated_java:tultaria/variants/face_eyeopen/apply
    #declare tag aj.tultaria.bone.right_ring
    #declare tag aj.tultaria.bone.left_ring
    #declare tag aj.tultaria.node.right_item_display
