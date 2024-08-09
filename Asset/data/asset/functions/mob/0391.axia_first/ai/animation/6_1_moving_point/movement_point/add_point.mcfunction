#> asset:mob/0391.axia_first/ai/animation/6_1_moving_point/movement_point/add_point
#
# 移動地点指定
#
# @within function asset:mob/0391.axia_first/ai/animation/6_1_moving_point/

# 移動地点指定
    # セッション開ける
        function lib:array/session/open

    # 自身のPosを取得
        function api:data_get/pos
        data modify storage lib: ArrayB set from storage api: Pos
        summon marker ~ ~ ~ {Tags:["AV.Marker.Movement"]}

    # プレイヤーの位置からPosを取得
    # 今後AI次第では調整する予定
    #   data modify entity @e[type=marker,tag=AV.Marker.Movement,distance=..100,limit=1] Pos set from storage asset:context this.MovementPoint
        execute as @r[tag=!PlayerShouldInvulnerable,distance=..100] at @s run tp @e[type=marker,tag=AV.Marker.Movement,distance=..100] ^ ^ ^ ~ ~
        execute as @e[type=marker,tag=AV.Marker.Movement,distance=..100] at @s run function api:data_get/pos
        data modify storage lib: ArrayA set from storage api: Pos
    
    # Pos差分を計算してその結果を一時保存
        function lib:array/math/sub
        data modify storage asset:temp AV.Temp set from storage lib: SubResult

    # セッション閉じる
        function lib:array/session/close
    
    # セッション開ける
        function lib:array/session/open

    # Pos差分を1/25倍する
        data modify storage lib: Array set from storage asset:temp AV.Temp
        data modify storage lib: Mul set value 0.04
        function lib:array/math/scalar_multiply

    # 1tickの移動距離を保存
        data modify storage asset:context this.MoveDistance set from storage lib: MulResult
    
    # セッション閉じる
        function lib:array/session/close

    # リセット
        data remove storage asset:temp AV.Temp
