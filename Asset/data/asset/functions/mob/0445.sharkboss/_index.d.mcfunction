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

    #declare tag CD.Charging
    #declare tag CD.Electrified
    #declare tag CD.PufferFish
    #declare tag CD.Down

    #攻撃用のtag
    #declare tag CD.Action.Bite
    #declare tag CD.Action.Tail
    #declare tag CD.Action.Spin
    #declare tag CD.Action.BiteTail
    #declare tag CD.Action.Move
    #declare tag CD.Action.WaterGun1
    #declare tag CD.Action.WaterGun2
    #declare tag CD.Action.Rush1
    #declare tag CD.Action.Rush2
    #declare tag CD.Action.Rush3
    #declare tag CD.Action.EMP
    #declare tag CD.Action.Sharknado1
    #declare tag CD.Action.Sharknado2
    #declare tag CD.Action.Sharknado3
    #declare tag CD.Action.Down1
    #declare tag CD.Action.Down2
    #declare tag CD.Action.Down3
    #declare tag CD.Action.Puffer1
    #declare tag CD.Action.Puffer2

    #declare function animated_java:sharkboss/summon
    #declare function animated_java:sharkboss/animations/bite/tween
    #declare function animated_java:sharkboss/animations/bite_tail/tween
    #declare function animated_java:sharkboss/animations/move_loop/tween
    #declare function animated_java:sharkboss/animations/rush_start/tween
    #declare function animated_java:sharkboss/animations/rush_loop/tween
    #declare function animated_java:sharkboss/animations/rush_end/tween
    #declare function animated_java:sharkboss/animations/tornado/tween
    #declare function animated_java:sharkboss/animations/tail/tween
    #declare function animated_java:sharkboss/animations/watergun/tween
    #declare function animated_java:sharkboss/animations/emp/tween
    #declare function animated_java:sharkboss/animations/down_start/tween
    #declare function animated_java:sharkboss/animations/down_loop/tween
    #declare function animated_java:sharkboss/animations/down_end/tween
    #declare function animated_java:sharkboss/animations/sharknado_start/tween
    #declare function animated_java:sharkboss/animations/sharknado_loop/tween
    #declare function animated_java:sharkboss/animations/sharknado_end/tween
    #declare function animated_java:sharkboss/animations/puffer_start/tween
    #declare function animated_java:sharkboss/animations/puffer_loop/tween
    #declare function animated_java:sharkboss/animations/puffer_end/tween
