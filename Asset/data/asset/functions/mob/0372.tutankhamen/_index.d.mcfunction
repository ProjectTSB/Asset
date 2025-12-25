#> asset:mob/0372.tutankhamen/_index.d
# @private

#> スキルリスト
# @within function asset:mob/0372.tutankhamen/**
    #declare tag AC.Coddin
    #declare tag AC.Laser
    #declare tag AC.ManyShoot
    #declare tag AC.HyperLaser

#> ダッシュリスト
# @within function asset:mob/0372.tutankhamen/**
    #declare tag AC.Dash.Left
    #declare tag AC.Dash.Right
    #declare tag AC.Dash.Side
    #declare tag AC.Dash.Slash
    #declare tag AC.Dash.Charge

#> 状態タグ
# @within function asset:mob/0372.tutankhamen/**
    #declare tag AC.Health.50Per

#> 動作タグ
# @within function asset:mob/0372.tutankhamen/**
    #declare tag AC.Moveset.Transition

#> その他タグ
# @within function asset:mob/0372.tutankhamen/**
    #declare tag AC.InAction
    #declare tag AC.DashUsed
    #declare tag AC.Coffin
    #declare tag AC.CoffinPoint
    #declare tag AC.SpawnMarker
    #declare tag AC.AJ
    #declare tag AC.AJLink
    #declare tag AC.Opening
    #declare tag Target

#> 汎用スコアホルダー
# @within function asset:mob/0372.tutankhamen/**
    #declare score_holder $Random
    #declare score_holder $Interval

#> AJ
# @within function asset:mob/0372.tutankhamen/**
    #declare function animated_java:tutankhamen/summon
    #declare function animated_java:tutankhamen/remove/this
    #declare function animated_java:tutankhamen/summon
    #declare function animated_java:tutankhamen/animations/neutral/play
    #declare function animated_java:tutankhamen/animations/neutral/tween
    #declare function animated_java:tutankhamen/animations/neutral/stop
    #declare function animated_java:tutankhamen/animations/spawn/play
    #declare function animated_java:tutankhamen/animations/spawn/stop
    #declare function animated_java:tutankhamen/animations/death/play
    #declare function animated_java:tutankhamen/animations/death/stop
    #declare function animated_java:tutankhamen/animations/beam_shot/play
    #declare function animated_java:tutankhamen/animations/beam_shot/stop
    #declare function animated_java:tutankhamen/animations/beam_end/stop
    #declare function animated_java:tutankhamen/animations/soul_shot/play
    #declare function animated_java:tutankhamen/animations/soul_shot/stop
    #declare function animated_java:tutankhamen/animations/beam_long/play
    #declare function animated_java:tutankhamen/animations/beam_long/stop
    #declare function animated_java:tutankhamen/animations/beam_long/tween
    #declare function animated_java:tutankhamen/animations/beam_long_charge/play
    #declare function animated_java:tutankhamen/animations/beam_long_charge/stop
    #declare function animated_java:tutankhamen/animations/beam_long_shot/play
    #declare function animated_java:tutankhamen/animations/beam_long_shot/stop
    #declare function animated_java:tutankhamen/animations/rod_ground/tween
    #declare function animated_java:tutankhamen/animations/rod_ground_end/tween
    #declare function animated_java:tutankhamen/animations/dash/play
    #declare function animated_java:tutankhamen/animations/dash/tween
    #declare function animated_java:tutankhamen/animations/dash/stop
    #declare function animated_java:tutankhamen/animations/dash_slash/play
    #declare function animated_java:tutankhamen/animations/dash_slash/tween
    #declare function animated_java:tutankhamen/animations/dash_slash/stop
    #declare function animated_java:tutankhamen/animations/dash_end/play
    #declare function animated_java:tutankhamen/animations/dash_end/tween
    #declare function animated_java:tutankhamen/animations/dash_end/stop
    #declare function animated_java:tutankhamen/animations/attack_melee_1/tween
    #declare function animated_java:tutankhamen/animations/attack_dash_1/tween
    #declare function animated_java:tutankhamen/animations/attack_dash_2/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_windup/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_loop/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_end/tween
    #declare function animated_java:tutankhamen/animations/damage/tween
    #declare function animated_java:tutankhamen/animations/soul_shot/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_2_windup/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_2_loop/tween
    #declare function animated_java:tutankhamen/animations/attack_laser_2_end/tween
    #declare tag AC.ModelLocator.Weapon
