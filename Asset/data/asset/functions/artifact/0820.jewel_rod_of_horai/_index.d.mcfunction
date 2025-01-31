#> asset:artifact/0820.jewel_rod_of_horai/_index.d
# @private

#> 発動とスケジュールループ両方で使用
# @within function asset:artifact/0820.jewel_rod_of_horai/**
    #declare tag MS.AttackPosition

#> 攻撃発動時
# @within function asset:artifact/0820.jewel_rod_of_horai/**
    #declare score_holder $MS.TargetUUID
    #declare score_holder $MS.AttackLevel
    #declare tag MS.Init
