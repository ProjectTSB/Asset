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
    #declare tag A5.RotateMarker
    #declare tag A5.Marker.SpawnPoint
    #declare tag A5.MarkerInit
    #declare tag A5.TeleportMarker
    #declare tag A5.BodyMarker
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
    # ボスのダッシュ中の攻撃に関すること
    #declare tag A5.DashSkill.RapidLaser
    #declare tag A5.DashSkill.DelayLaser
    #declare tag A5.DashSkill.SlowShot

    # ボスの状態
    #declare tag A5.InAction
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
