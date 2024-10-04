#> asset:mob/1004.tultaria/_index.d
# @private

#> tag
# @within function asset:mob/1004.tultaria/**
    #declare tag RW.This
    #

    #declare storage rw_storage:

    ## ボスの体と移動に関連するタグ
    #declare tag RW.Boss
    #declare tag RW.ModelRoot
    #declare tag RW.ModelRoot.Target
    #declare tag RW.Opening
    #declare tag RW.Start
    #declare tag RW.PlayerFacing
    #declare tag RW.TeleportMarker
    #declare tag RW.Move
    #declare tag RW.TickLock
    #declare tag RW.InAction
    #declare tag RW.LoopCount
    #declare tag RW.ChaseShot
    #declare tag RW.ChaseMarker
    #declare tag RW.ChaseMarker1
    #declare tag RW.ChaseMarker2
    #declare tag RW.ChaseMarker3
    #declare tag RW.ChaseMarker4
    #declare tag RW.DisableInertia

    ## ボスのマーカーに関するタグ
    #declare tag RW.RotateMarker
    #declare tag RW.Marker.SpawnPoint
    #declare tag RW.MarkerInit
    #declare tag RW.TeleportMarker
    #declare tag RW.BodyMarker
    #declare tag RW.MarkerInit
    #declare tag RW.AimMarker

    ## ボスのHPのタグ
    #declare tag RW.HPless75per
    #declare tag RW.HPless50per

    ## ボスの使う技のタグ
    # 火属性
        #declare tag RW.Skill.Meteor
        #declare tag RW.Skill.BlazingCombo
    # 水属性
        #declare tag RW.Skill.FreezingShred
        #declare tag RW.Skill.AncientLight
    # 雷属性
        #declare tag RW.Skill.Thunder
        #declare tag RW.Skill.LightningStab
    # 無属性
        #declare tag RW.Skill.MoveShot
        #declare tag RW.Skill.AimingLaser
        #declare tag RW.Skill.SpreadShot
        #declare tag RW.Skill.Starfury
        #declare tag RW.Skill.Melee

    ## 雷攻撃は複数パターンあってもいいよね
    #declare tag RW.Skill.Thunder.1
    #declare tag RW.Skill.Thunder.2
    #declare tag RW.Skill.Thunder.3

    ## ボスの使う小技のタグ
    #declare tag RW.Skill.Mini.MoveShot
    #declare tag RW.Skill.Mini.MoveShotLeft
    #declare tag RW.Skill.Mini.MoveShotRight
    #declare tag RW.Skill.Mini.SpreadShot
    #declare tag RW.Skill.Mini.Slash
    #declare tag RW.Skill.Mini.BackShot
    #declare tag RW.Skill.Mini.TeleportBeam

    ## ボスの移動方向に関するタグ
    #declare tag RW.Direction.Left
    #declare tag RW.Direction.Right

    ## ボスの使う大技のタグ
    #declare tag RW.Skill.Deadly1
    #declare tag RW.Skill.Deadly2

    ## ボスの使う違う技のタグ
    #declare tag RW.MiniSkillChase
    #declare tag RW.MiniSkillShot
    #declare tag RW.MiniSkillBulletHell
    #declare tag RW.MiniSkillLaser
    #declare tag RW.MiniSkillUsed

    ## ボスの飛び道具のタグ
    #declare tag RW.MeteorMaker
    #declare tag RW.BigMeteorMaker
    #declare tag RW.CoordinateMarker
    #declare tag RW.OffCoordinateMarker
    #declare tag RW.SlashSweep
    #declare tag RW.SlashInit
    #declare tag RW.IceSweep
    #declare tag RW.FireSweep
    #declare tag RW.TargetMarker
    #declare tag RW.TargetMarkerInit
    #declare tag RW.ChainLightning.Common
    #declare tag RW.ChainLightning1
    #declare tag RW.ChainLightning2
    #declare tag RW.ChainLightning3
    #declare tag RW.ChainLightning4
    #declare tag RW.ChainLightning5
    #declare tag RW.ChainLightning.Last
    #declare tag S2.Wait

    ## ボスの死亡時に使うタグ
    #declare tag RW.DeathAnimation
    #declare tag RW.DeathInit
    #declare tag Hit

    #
    #declare tag Landing
    #declare tag LandingTarget
