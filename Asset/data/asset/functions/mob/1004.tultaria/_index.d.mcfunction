#> asset:mob/1004.tultaria/_index.d
# @private

#> tag
# @within function asset:mob/1004.tultaria/**
    # ボスのモードに関するタグ
    #declare tag RW.Mode.Fire
    #declare tag RW.Mode.Water
    #declare tag RW.Mode.Thunder
    #declare tag RW.Mode.Light
    # ボスの状態に関するタグ
    #declare tag RW.CanElementChange
    #declare tag RW.SkillSelected
    #declare tag RW.Shield
    #declare tag RW.Break
    # ボスの体と移動に関連するタグ
    #declare tag RW.Opening
    #declare tag RW.PlayerFacing
    #declare tag RW.TeleportMarker
    #declare tag RW.Move
    #declare tag RW.TickLock
    #declare tag RW.InAction
    #declare tag RW.DisableInertia
    #declare tag RW.This
    # ボスのモデルに関するタグ
    #declare tag RW.ModelLocator.LeftHand
    #declare tag RW.ModelLocator.RightHand
    #declare tag RW.ModelRoot
    #declare tag RW.ModelRoot.Target
    #declare tag RW.Model.RightHandItem
    # ボスのマーカーに関するタグ
    #declare tag RW.RotateMarker
    #declare tag RW.Marker.SpawnPoint
    #declare tag RW.MarkerInit
    #declare tag RW.TeleportMarker
    #declare tag RW.BodyMarker
    #declare tag RW.Marker.Aim
    # ボスの使う大技のタグ
    #declare tag RW.Transition.Phase2
    #declare tag RW.Transition.Phase2.Attack
    #declare tag RW.Transition.Phase3
    #declare tag RW.Transition.Phase3.Attack
    # 多段ヒット防止
    #declare tag RW.TargetEntity
    # プレイヤーに付与されるもの:
    #declare tag RW.Player.Void
    # ボスの使う技のタグ
    # 火属性
    #declare tag RW.Skill.Meteor
    #declare tag RW.Skill.MoveShot
    #declare tag RW.Skill.BlazingCombo
    # 水属性
    #declare tag RW.Skill.SpinSlash
    #declare tag RW.Skill.SwordRain
    #declare tag RW.Skill.HomingShot
    # 雷属性
    #declare tag RW.Skill.Thunder
    #declare tag RW.Skill.LightningStab
    #declare tag RW.Skill.AimingLaser
    # 無属性
    #declare tag RW.Skill.Starfury
    # 雷攻撃は複数パターンあってもいいよね
    #declare tag RW.Skill.Thunder.1
    #declare tag RW.Skill.Thunder.2
    #declare tag RW.Skill.Thunder.3
    #declare tag RW.Skill.Thunder.4
    # メテオ攻撃にも複数パターンあってもいいよね
    #declare tag RW.Skill.Meteor.1
    #declare tag RW.Skill.Meteor.2
    #declare tag RW.Skill.Meteor.3
    #declare tag RW.Skill.Meteor.4
    # 剣の雨攻撃も複数パターンあります！
    #declare tag RW.Skill.SwordRain.1
    #declare tag RW.Skill.SwordRain.2
    #declare tag RW.Skill.SwordRain.3
    #declare tag RW.Skill.SwordRain.4
    # ボスの飛び道具のタグ
    #declare tag RW.ChainLightning.Common
    #declare tag RW.ChainLightning1
    #declare tag RW.ChainLightning2
    #declare tag RW.ChainLightning3
    #declare tag RW.ChainLightning4
    #declare tag RW.ChainLightning5
    #declare tag RW.ChainLightning6
    # Animated animated_java
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
