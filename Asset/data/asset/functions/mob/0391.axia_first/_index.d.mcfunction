#> asset:mob/0391.axia_first/_index.d
# @private

#> tag
# @within function asset:mob/0391.axia_first/**
    #declare tag AV.Marker.SummonPoint
    #declare tag AV.Marker.Movement
    #declare tag AV.ModelRoot
    #declare tag AV.Root.This
    #declare tag AV.Temp.This
    #declare tag AV.Temp.Target
    #declare tag AV.Landing
    #declare tag AV.SlashEffect
    #declare tag AV.SlashEffectMini
    #declare tag AV.SlashEffectInit
    #declare tag AV.Inbisible
    #declare tag AV.SlashSonicInit
    #declare tag AV.SlashSonic
    #declare tag AV.Predict
    #declare tag AV.SonicBoomEffect
    #declare tag AV.AnnounceInit
    #declare tag AV.AnnounceLine
    #declare tag AV.DimSword
    #declare tag AV.DimSwordDistween
    #declare tag AV.ShockWave
    #declare tag AV.CriticalHit
    #declare tag AV.CriticalOpening
    #declare tag AV.SuperiorSkill
    #declare tag AV.Death

#> val
# @within function asset:mob/0391.axia_first/**
    #declare score_holder $AV.Temp
    #declare score_holder $AV.Loop

#> AJ
# @within function asset:mob/0391.axia_first/**
    #declare function animated_java:axia/summon
    #declare function animated_java:axia/remove/all
    #declare function animated_java:axia/animations/pause_all
    #declare function animated_java:axia/animations/1_0_idle/tween
    #declare function animated_java:axia/animations/1_1_idle_rare/tween
    #declare function animated_java:axia/animations/2_0_normal_slash/tween
    #declare function animated_java:axia/animations/3_0_triple_slash/tween
    #declare function animated_java:axia/animations/4_0_naginagi/tween
    #declare function animated_java:axia/animations/6_0_moving_forward/tween
    #declare function animated_java:axia/animations/7_0_moving_iai/tween
    #declare function animated_java:axia/animations/8_0_moving_spin/tween
    #declare function animated_java:axia/animations/9_0_zangekihou/tween
    #declare function animated_java:axia/animations/10_0_warp_start/tween
    #declare function animated_java:axia/animations/10_1_warp_slash_0/tween
    #declare function animated_java:axia/animations/10_2_warp_slash_1/tween
    #declare function animated_java:axia/animations/10_3_warp_slash_2/tween
    #declare function animated_java:axia/animations/11_0_dimension_slash/tween
    #declare function animated_java:axia/animations/12_0_kourai/tween
    #declare function animated_java:axia/animations/13_0_damage_1/tween
    #declare function animated_java:axia/animations/13_1_damage_2/tween
    #declare function animated_java:axia/animations/14_0_opening_attack/tween
    #declare function animated_java:axia/animations/14_0_opening_attack/pause
    #declare function animated_java:axia/animations/14_0_opening_attack/resume
    #declare function animated_java:axia/animations/15_0_former_ending/tween
