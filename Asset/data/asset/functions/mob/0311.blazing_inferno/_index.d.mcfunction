#> asset:mob/0311.blazing_inferno/_index.d
# @private

#> tag
# @within function asset:mob/0311.blazing_inferno/**
    #declare tag 8N.ModelRoot
    #declare tag 8N.ModelRoot.Target
    #declare tag 8N.DeathEvent
    #declare tag 8N.RailMove
    #declare tag 8N.InAction
    #declare tag 8N.PlayerFacing

## 動作モード
    #declare tag 8N.Moveset.Intro
    #declare tag 8N.Moveset.BaseMove
    #declare tag 8N.Moveset.Transition


## マーカーリスト
    #declare tag 8N.Marker.SpawnPoint
    #declare tag 8N.Marker.Target
    #declare tag 8N.Marker.GroundSlamBeam
    #declare tag 8N.Marker.MinePlace
    #declare tag 8N.Marker.MinePlaceInit

## スキルリスト
    #declare tag 8N.Skill.Fireball
    #declare tag 8N.Skill.DashPunch
    #declare tag 8N.Skill.FireBomb
    #declare tag 8N.Skill.SpreadMine
    #declare tag 8N.Skill.OraOra
    #declare tag 8N.Skill.Summon
    #declare tag 8N.Skill.GroundSlam
    #declare tag 8N.Health.50Per


    #declare tag 8N.Turn.HighSpeed
    #declare tag 8N.Turn.Clockwise
    #declare tag 8N.Turn.CounterClockwise
    #declare tag 8N.Turn.Wait

## Animated Java
    #declare function animated_java:blazing_inferno/summon
    #declare function animated_java:blazing_inferno/animations/intro/play
    #declare function animated_java:blazing_inferno/animations/intro/stop
    #declare function animated_java:blazing_inferno/animations/intro/pause
    #declare function animated_java:blazing_inferno/animations/intro/resume
    #declare function animated_java:blazing_inferno/animations/intro/next_frame
    #declare function animated_java:blazing_inferno/animations/intro/set_frame
    #declare function animated_java:blazing_inferno/animations/intro/apply_frame
    #declare function animated_java:blazing_inferno/animations/intro/tween
    #declare function animated_java:blazing_inferno/animations/intro/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/intro/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/intro/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/posing/play
    #declare function animated_java:blazing_inferno/animations/posing/stop
    #declare function animated_java:blazing_inferno/animations/posing/pause
    #declare function animated_java:blazing_inferno/animations/posing/resume
    #declare function animated_java:blazing_inferno/animations/posing/next_frame
    #declare function animated_java:blazing_inferno/animations/posing/set_frame
    #declare function animated_java:blazing_inferno/animations/posing/apply_frame
    #declare function animated_java:blazing_inferno/animations/posing/tween
    #declare function animated_java:blazing_inferno/animations/posing/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/posing/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/posing/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/play
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/stop
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/pause
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/resume
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/next_frame
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/set_frame
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/apply_frame
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/tween
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/zzz/zzz/0
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/zzz/zzz/1
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/neutral_fighting/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/death_loop/play
    #declare function animated_java:blazing_inferno/animations/death_loop/stop
    #declare function animated_java:blazing_inferno/animations/death_loop/pause
    #declare function animated_java:blazing_inferno/animations/death_loop/resume
    #declare function animated_java:blazing_inferno/animations/death_loop/next_frame
    #declare function animated_java:blazing_inferno/animations/death_loop/set_frame
    #declare function animated_java:blazing_inferno/animations/death_loop/apply_frame
    #declare function animated_java:blazing_inferno/animations/death_loop/tween
    #declare function animated_java:blazing_inferno/animations/death_loop/zzz/zzz/0
    #declare function animated_java:blazing_inferno/animations/death_loop/zzz/zzz/1
    #declare function animated_java:blazing_inferno/animations/death_loop/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/death_loop/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/death_loop/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/play
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/stop
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/pause
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/resume
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/tween
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_right/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/play
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/stop
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/pause
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/resume
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/tween
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_end/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/play
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/stop
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/pause
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/resume
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/tween
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_punch_1_left/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/play
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/stop
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/pause
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/resume
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/tween
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_right/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/play
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/stop
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/pause
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/resume
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/tween
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_1_left/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/play
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/stop
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/pause
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/resume
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/tween
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_shoot_2/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/play
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/stop
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/pause
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/resume
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/tween
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/zzz/on_tick
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/zzz/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_windup/zzz/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/play
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/stop
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/pause
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/resume
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/next_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/set_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/apply_frame
    #declare function animated_java:blazing_inferno/animations/attack_oraora_loop/tween
	#declare function animated_java:blazing_inferno/animations/teleport/play
	#declare function animated_java:blazing_inferno/animations/teleport/stop
	#declare function animated_java:blazing_inferno/animations/teleport/pause
	#declare function animated_java:blazing_inferno/animations/teleport/resume
	#declare function animated_java:blazing_inferno/animations/teleport/next_frame
	#declare function animated_java:blazing_inferno/animations/teleport/set_frame
	#declare function animated_java:blazing_inferno/animations/teleport/apply_frame
	#declare function animated_java:blazing_inferno/animations/teleport/tween
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/play
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/stop
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/pause
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/resume
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/next_frame
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/set_frame
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/apply_frame
	#declare function animated_java:blazing_inferno/animations/teleport_vanish/tween
	#declare function animated_java:blazing_inferno/animations/attack_fall/play
	#declare function animated_java:blazing_inferno/animations/attack_fall/stop
	#declare function animated_java:blazing_inferno/animations/attack_fall/pause
	#declare function animated_java:blazing_inferno/animations/attack_fall/resume
	#declare function animated_java:blazing_inferno/animations/attack_fall/next_frame
	#declare function animated_java:blazing_inferno/animations/attack_fall/set_frame
	#declare function animated_java:blazing_inferno/animations/attack_fall/apply_frame
	#declare function animated_java:blazing_inferno/animations/attack_fall/tween
	#declare function animated_java:blazing_inferno/animations/damage/play
	#declare function animated_java:blazing_inferno/animations/damage/stop
	#declare function animated_java:blazing_inferno/animations/damage/pause
	#declare function animated_java:blazing_inferno/animations/damage/resume
	#declare function animated_java:blazing_inferno/animations/damage/next_frame
	#declare function animated_java:blazing_inferno/animations/damage/set_frame
	#declare function animated_java:blazing_inferno/animations/damage/apply_frame
	#declare function animated_java:blazing_inferno/animations/damage/tween
    #declare tag 8N.ModelLocator.LeftHand
    #declare tag 8N.ModelLocator.RightHand
