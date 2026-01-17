#> asset:object/2049.lightning_magic/tick/on_ground
#
# 一度地面に着いてからの処理
#
# @within function asset:object/2049.lightning_magic/tick/

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で実行
    execute store result storage asset:context this.AttackInterval int 0.9999999999 run data get storage asset:context this.AttackInterval
    execute if data storage asset:context this{AttackInterval:0} run function asset:object/2049.lightning_magic/tick/thunder
    execute if data storage asset:context this{AttackInterval:0} run data modify storage asset:context this.AttackInterval set value 8

# 一定間隔でtext_displayのフレームを反映
    execute store result storage asset:context this.FrameInterval int 0.9999999999 run data get storage asset:context this.FrameInterval
    execute if data storage asset:context this{FrameInterval:0} on passengers if entity @s[type=text_display] run function asset:object/2049.lightning_magic/tick/text_frame
    execute if data storage asset:context this{FrameInterval:0} run data modify storage asset:context this.FrameInterval set value 2

# プレイヤーの方向へ誘導する
    execute facing entity @p[gamemode=!spectator,distance=..100] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 現在座標がno_collisonかつ真下がブロックの場合、角度を0に固定する
    execute if block ~ ~ ~ #lib:no_collision/without_fluid unless block ~ ~-0.15 ~ #lib:no_collision/without_fluid at @s run tp @s ~ ~ ~ ~ 0
