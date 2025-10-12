#> asset:mob/0445.sharkboss/_index.d
# @private

#> tag
# @within function asset:mob/0445.sharkboss/**

    #declare tag CD.EntityRoot 自分自身
    #declare tag CD.ModelRoot AJモデルのRootEntity
    #declare tag CD.CenterPosition 中心点

    #declare tag CD.IsFlying 飛んでるかどうか
    #declare tag CD.CanAction 次の行動行けます状態
    #declare tag CD.CloseRangeAction 近距離攻撃をしたい
    #declare tag CD.Reserving 攻撃の予約
    #declare tag CD.Action.Reserve.Rush2 突進2の予約
    #declare tag CD.Target ターゲット
    #declare tag CD.Marker.SpawnPoint 最初の床のマーカー


    #攻撃用のtag
    #declare tag CD.Action.Bite
    #declare tag CD.Action.Tail
    #declare tag CD.Action.Spin
    #declare tag CD.Action.Spin
    #declare tag CD.Action.BiteTail
    #declare tag CD.Action.SkyToGround
    #declare tag CD.Action.Move
    #declare tag CD.Action.WaterGun1
    #declare tag CD.Action.WaterGun2
    #declare tag CD.Action.Rush
    #declare tag CD.Action.Rush2
    #declare function animated_java:sharkboss/summon
    #declare function animated_java:sharkboss/animations/sky_bite/tween
    #declare function animated_java:sharkboss/animations/sky_bite_tail/tween
    #declare function animated_java:sharkboss/animations/move_loop/tween
    #declare function animated_java:sharkboss/animations/ground_rush_start/tween
    #declare function animated_java:sharkboss/animations/ground_rush_loop/tween
    #declare function animated_java:sharkboss/animations/sky_to_ground/tween
    #declare function animated_java:sharkboss/animations/sky_spin/tween
    #declare function animated_java:sharkboss/animations/sky_tail/tween
    #declare function animated_java:sharkboss/animations/ground_watergun/tween
