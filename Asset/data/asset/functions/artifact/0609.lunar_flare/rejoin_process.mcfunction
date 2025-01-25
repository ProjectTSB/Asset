#> asset:artifact/0609.lunar_flare/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 次tickも実行
    execute as @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=1..}] run schedule function asset:artifact/0609.lunar_flare/click/projectile/laser_pos_main 1t replace