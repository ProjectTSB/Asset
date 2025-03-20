#> asset:mob/0365.frestchika/_index.d
# @private

#> tag
# @within function asset:mob/0365.frestchika/**
    # ボスのモデルに関するタグ
    #declare tag A5.ModelLocator.LeftFoot
    #declare tag A5.ModelLocator.RightFoot
    #declare tag A5.ModelLocator.LeftWing
    #declare tag A5.ModelLocator.RightWing
    #declare tag A5.ModelRoot
    #declare tag A5.ModelRoot.Target
    # ボスのマーカーに関するタグ
    #declare tag A5.Marker
    #declare tag A5.Marker.SpawnPoint
    #declare tag A5.Marker.Common
    #declare tag A5.Marker.Aim
    # ボスのムーブセット
    #declare tag A5.Moveset.Intro
    #declare tag A5.Moveset.BaseMove
    #declare tag A5.Moveset.Transition
    # ボスのスキル
    #declare tag A5.Skill.SideDashShot
    #declare tag A5.Dash.Left
    #declare tag A5.Dash.Right
    #declare tag A5.Skill.FrontDashSlash
    #declare tag A5.Skill.BackDashBomb
    #declare tag A5.Skill.HoloBlockThunder
    #declare tag A5.Skill.ChargeSlash
    #declare tag A5.Skill.CordinateLaser
    #declare tag A5.Skill.RandomTeleportSlash
    #declare tag A5.Skill.HoloBlock
    # ボスのダッシュ中の攻撃に関すること
    #declare tag A5.DashSkill.RapidLaser
    #declare tag A5.DashSkill.DelayLaser
    #declare tag A5.DashSkill.SlowShot
    # ホロブロックの設置パターン
    #declare tag A5.HoloBlock.1
    #declare tag A5.HoloBlock.2
    #declare tag A5.HoloBlock.3
    # ボスの状態
    #declare tag A5.InAction
    # その他
    #declare tag Hit
    # Animated Java
    #declare function animated_java:frestchika/summon
    #declare function animated_java:frestchika/animations/intro/tween
    #declare function animated_java:frestchika/animations/neutral/tween
    #declare function animated_java:frestchika/animations/dash_start/tween
    #declare function animated_java:frestchika/animations/dash_end/tween
    #declare function animated_java:frestchika/animations/dash_left/tween
    #declare function animated_java:frestchika/animations/dash_right/tween
    #declare function animated_java:frestchika/animations/attack_slash_1_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_1_active/tween
    #declare function animated_java:frestchika/animations/attack_2_right/tween
    #declare function animated_java:frestchika/animations/attack_2_left/tween
    #declare function animated_java:frestchika/animations/attack_3/tween
    #declare function animated_java:frestchika/remove/this
    #declare function animated_java:frestchika/animations/attack_slash_2_windup/tween
    #declare function animated_java:frestchika/animations/attack_slash_2_active/tween
    #declare function animated_java:frestchika/animations/attack_slash_3/tween
    #declare function animated_java:frestchika/animations/attack_ranged_1/tween
    #declare tag aj.frestchika.bone.right_item.child
    #declare tag aj.frestchika.bone.left_item.child
