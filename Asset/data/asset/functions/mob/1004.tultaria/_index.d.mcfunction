#> asset:mob/1004.tultaria/_index.d
# @private

#> tag
# @within function asset:mob/1004.tultaria/**

#declare storage rw_storage:
# ボスのモードに関するタグ
#declare tag RW.Mode.Fire
#declare tag RW.Mode.Water
#declare tag RW.Mode.Thunder
#declare tag RW.Mode.Light
# ボスの状態に関するタグ
#declare tag RW.CanElementChange
#declare tag RW.SkillSelected
# ボスの体と移動に関連するタグ
#declare tag RW.Opening
#declare tag RW.PlayerFacing
#declare tag RW.TeleportMarker
#declare tag RW.Move
#declare tag RW.TickLock
#declare tag RW.InAction
#declare tag RW.DisableInertia
#declare tag RW.Shield
# ボスのモデルに関するタグ
#declare tag RW.ModelLocator.LeftHand
#declare tag RW.ModelLocator.RightHand
#declare tag RW.ModelRoot
#declare tag RW.ModelRoot.Target
# ボスのマーカーに関するタグ
#declare tag RW.RotateMarker
#declare tag RW.Marker.SpawnPoint
#declare tag RW.MarkerInit
#declare tag RW.TeleportMarker
#declare tag RW.BodyMarker
#declare tag RW.MarkerInit
#declare tag RW.Marker.Aim
# ボスのHPのタグ
#declare tag RW.HPless75per
#declare tag RW.HPless50per
# ボスの使う大技のタグ
#declare tag RW.Transition.Phase2
#declare tag RW.Transition.Phase2.Windup
#declare tag RW.Transition.Phase2.Attack
#declare tag RW.Transition.Phase3
#declare tag RW.Transition.Phase3.Windup
#declare tag RW.Transition.Phase3.Attack
# ボスの使う技のタグ
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
# Animated animated_java
#declare function animated_java:tultaria/summon
#declare function animated_java:tultaria/animations/neutral_air/play
#declare function animated_java:tultaria/animations/neutral_air/stop
#declare function animated_java:tultaria/animations/neutral_air/pause
#declare function animated_java:tultaria/animations/neutral_air/resume
#declare function animated_java:tultaria/animations/neutral_air/next_frame
#declare function animated_java:tultaria/animations/neutral_air/set_frame
#declare function animated_java:tultaria/animations/neutral_air/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_1_right/play
#declare function animated_java:tultaria/animations/attack_magic_1_right/stop
#declare function animated_java:tultaria/animations/attack_magic_1_right/pause
#declare function animated_java:tultaria/animations/attack_magic_1_right/resume
#declare function animated_java:tultaria/animations/attack_magic_1_right/next_frame
#declare function animated_java:tultaria/animations/attack_magic_1_right/set_frame
#declare function animated_java:tultaria/animations/attack_magic_1_right/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_1_right/tween
#declare function animated_java:tultaria/animations/attack_magic_1_left/play
#declare function animated_java:tultaria/animations/attack_magic_1_left/stop
#declare function animated_java:tultaria/animations/attack_magic_1_left/pause
#declare function animated_java:tultaria/animations/attack_magic_1_left/resume
#declare function animated_java:tultaria/animations/attack_magic_1_left/next_frame
#declare function animated_java:tultaria/animations/attack_magic_1_left/set_frame
#declare function animated_java:tultaria/animations/attack_magic_1_left/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_1_left/tween
#declare function animated_java:tultaria/animations/attack_magic_2_right/play
#declare function animated_java:tultaria/animations/attack_magic_2_right/stop
#declare function animated_java:tultaria/animations/attack_magic_2_right/pause
#declare function animated_java:tultaria/animations/attack_magic_2_right/resume
#declare function animated_java:tultaria/animations/attack_magic_2_right/next_frame
#declare function animated_java:tultaria/animations/attack_magic_2_right/set_frame
#declare function animated_java:tultaria/animations/attack_magic_2_right/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_2_right/tween
#declare function animated_java:tultaria/animations/attack_magic_2_left/play
#declare function animated_java:tultaria/animations/attack_magic_2_left/stop
#declare function animated_java:tultaria/animations/attack_magic_2_left/pause
#declare function animated_java:tultaria/animations/attack_magic_2_left/resume
#declare function animated_java:tultaria/animations/attack_magic_2_left/next_frame
#declare function animated_java:tultaria/animations/attack_magic_2_left/set_frame
#declare function animated_java:tultaria/animations/attack_magic_2_left/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_2_left/tween
#declare function animated_java:tultaria/animations/attack_magic_3_right/play
#declare function animated_java:tultaria/animations/attack_magic_3_right/stop
#declare function animated_java:tultaria/animations/attack_magic_3_right/pause
#declare function animated_java:tultaria/animations/attack_magic_3_right/resume
#declare function animated_java:tultaria/animations/attack_magic_3_right/next_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right/set_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right/tween
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/play
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/stop
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/pause
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/resume
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/next_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/set_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/apply_frame
#declare function animated_java:tultaria/animations/attack_magic_3_right_loop/tween
#declare function animated_java:tultaria/animations/attack_melee_1/play
#declare function animated_java:tultaria/animations/attack_melee_1/stop
#declare function animated_java:tultaria/animations/attack_melee_1/pause
#declare function animated_java:tultaria/animations/attack_melee_1/resume
#declare function animated_java:tultaria/animations/attack_melee_1/next_frame
#declare function animated_java:tultaria/animations/attack_melee_1/set_frame
#declare function animated_java:tultaria/animations/attack_melee_1/apply_frame
#declare function animated_java:tultaria/animations/attack_melee_1/tween
#declare function animated_java:tultaria/animations/attack_melee_2/play
#declare function animated_java:tultaria/animations/attack_melee_2/stop
#declare function animated_java:tultaria/animations/attack_melee_2/pause
#declare function animated_java:tultaria/animations/attack_melee_2/resume
#declare function animated_java:tultaria/animations/attack_melee_2/next_frame
#declare function animated_java:tultaria/animations/attack_melee_2/set_frame
#declare function animated_java:tultaria/animations/attack_melee_2/apply_frame
#declare function animated_java:tultaria/animations/attack_melee_2/tween
#declare function animated_java:tultaria/animations/attack_melee_3/play
#declare function animated_java:tultaria/animations/attack_melee_3/stop
#declare function animated_java:tultaria/animations/attack_melee_3/pause
#declare function animated_java:tultaria/animations/attack_melee_3/resume
#declare function animated_java:tultaria/animations/attack_melee_3/next_frame
#declare function animated_java:tultaria/animations/attack_melee_3/set_frame
#declare function animated_java:tultaria/animations/attack_melee_3/apply_frame
#declare function animated_java:tultaria/animations/attack_melee_3/tween
#declare function animated_java:tultaria/animations/attack_melee_4_windup/play
#declare function animated_java:tultaria/animations/attack_melee_4_windup/stop
#declare function animated_java:tultaria/animations/attack_melee_4_windup/pause
#declare function animated_java:tultaria/animations/attack_melee_4_windup/resume
#declare function animated_java:tultaria/animations/attack_melee_4_windup/next_frame
#declare function animated_java:tultaria/animations/attack_melee_4_windup/set_frame
#declare function animated_java:tultaria/animations/attack_melee_4_windup/apply_frame
#declare function animated_java:tultaria/animations/attack_melee_4_windup/tween
#declare function animated_java:tultaria/animations/attack_melee_4_active/play
#declare function animated_java:tultaria/animations/attack_melee_4_active/stop
#declare function animated_java:tultaria/animations/attack_melee_4_active/pause
#declare function animated_java:tultaria/animations/attack_melee_4_active/resume
#declare function animated_java:tultaria/animations/attack_melee_4_active/next_frame
#declare function animated_java:tultaria/animations/attack_melee_4_active/set_frame
#declare function animated_java:tultaria/animations/attack_melee_4_active/apply_frame
#declare function animated_java:tultaria/animations/attack_melee_4_active/tween
#declare function animated_java:tultaria/animations/dodge_back/play
#declare function animated_java:tultaria/animations/dodge_back/stop
#declare function animated_java:tultaria/animations/dodge_back/pause
#declare function animated_java:tultaria/animations/dodge_back/resume
#declare function animated_java:tultaria/animations/dodge_back/next_frame
#declare function animated_java:tultaria/animations/dodge_back/set_frame
#declare function animated_java:tultaria/animations/dodge_back/apply_frame
#declare function animated_java:tultaria/animations/dodge_back/tween
#declare function animated_java:tultaria/animations/dodge_side/play
#declare function animated_java:tultaria/animations/dodge_side/stop
#declare function animated_java:tultaria/animations/dodge_side/pause
#declare function animated_java:tultaria/animations/dodge_side/resume
#declare function animated_java:tultaria/animations/dodge_side/next_frame
#declare function animated_java:tultaria/animations/dodge_side/set_frame
#declare function animated_java:tultaria/animations/dodge_side/apply_frame
#declare function animated_java:tultaria/animations/dodge_side/tween
#declare function animated_java:tultaria/animations/pause_all
#declare function animated_java:tultaria/apply_default_pose
#declare function animated_java:tultaria/remove/this
#declare tag aj.tultaria.bone.right_ring
#declare tag aj.tultaria.bone.left_ring
