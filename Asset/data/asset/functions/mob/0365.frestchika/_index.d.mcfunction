#> asset:mob/0365.frestchika/_index.d
# @private

#> ボスのモデルに関するTag
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.ModelLocator.LeftFoot
    #declare tag A5.ModelLocator.RightFoot
    #declare tag A5.ModelLocator.LeftWing
    #declare tag A5.ModelLocator.RightWing
    #declare tag A5.ModelRoot
    #declare tag A5.ModelRoot.Target
    #declare tag A5.Model.LeftHandItem
    #declare tag A5.Model.RightHandItem

#> ボスのマーカーに関するTag
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.Marker
    #declare tag A5.Marker.SpawnPoint
    #declare tag A5.Marker.Aim
    #declare tag A5.Marker.Teleport
    #declare tag A5.Marker.Thunder

#> ボスのムーブセット
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.Moveset.Intro
    #declare tag A5.Moveset.BaseMove
    #declare tag A5.Moveset.Transition

#> ボスのスキル
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.Dash.Left
    #declare tag A5.Dash.Right
    #declare tag A5.Skill.SideDashShot
    #declare tag A5.Skill.FrontDashSlash
    #declare tag A5.Skill.ChargeSlash
    #declare tag A5.Skill.ChargeSlashThunder
    #declare tag A5.Skill.CordinateLaser
    #declare tag A5.Skill.RandomTeleportSlash
    #declare tag A5.Skill.HoloBlock
    #declare tag A5.Skill.OverHeat

#> ボスのダッシュ中の攻撃に関すること
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.DashSkill.RapidLaser
    #declare tag A5.DashSkill.DelayLaser

#> ホロブロックの設置パターン
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.HoloBlock.1
    #declare tag A5.HoloBlock.2
    #declare tag A5.HoloBlock.3

#> ボスの状態
# @within function asset:mob/0365.frestchika/**
    #declare tag A5.InAction
    #declare tag A5.CycleReset

#> その他
# @within function asset:mob/0365.frestchika/**
    #declare tag Hit

#> AJ
# @within function asset:mob/0365.frestchika/**
    #declare tag aj.frestchika.node.right_item_display
    #declare tag aj.frestchika.node.left_item_display
    #declare function animated_java:frestchika/summon
    #declare function animated_java:frestchika/animations/intro/tween
    #declare function animated_java:frestchika/animations/neutral/tween
    #declare function animated_java:frestchika/animations/dash_start/tween
    #declare function animated_java:frestchika/animations/dash_windup/tween
    #declare function animated_java:frestchika/animations/dash_left/tween
    #declare function animated_java:frestchika/animations/dash_right/tween
    #declare function animated_java:frestchika/animations/dash_left_gun/tween
    #declare function animated_java:frestchika/animations/dash_right_gun/tween
    #declare function animated_java:frestchika/animations/attack_slash_1_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_1_active/tween
    #declare function animated_java:frestchika/animations/attack_2_right/tween
    #declare function animated_java:frestchika/animations/attack_2_left/tween
    #declare function animated_java:frestchika/animations/attack_3/tween
    #declare function animated_java:frestchika/remove/this
    #declare function animated_java:frestchika/animations/attack_slash_2_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_2_active/tween
    #declare function animated_java:frestchika/animations/attack_slash_3/tween
    #declare function animated_java:frestchika/animations/attack_slash_4_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_4_active/tween
    #declare function animated_java:frestchika/animations/attack_slash_5_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_5_active/tween
    #declare function animated_java:frestchika/animations/attack_ranged_1/tween
    #declare function animated_java:frestchika/animations/break/tween
    #declare function animated_java:frestchika/animations/break_loop/tween
    #declare function animated_java:frestchika/animations/recovery/tween
    #declare function animated_java:frestchika/animations/teleport/tween
