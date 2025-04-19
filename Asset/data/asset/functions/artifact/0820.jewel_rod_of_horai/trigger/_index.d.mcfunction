#> asset:artifact/0820.jewel_rod_of_horai/trigger/_index.d
# @private

#> 発動とスケジュールループ両方で使用
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/**
    #declare tag MS.AttackPosition

#> 攻撃発動時
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/**
    #declare score_holder $MS.TargetUUID
    #declare score_holder $MS.AttackLevel
    #declare score_holder $MS.MPHeal
    #declare tag MS.Init
