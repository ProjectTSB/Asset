#> asset:artifact/1043.gamma_ray/trigger/5.casting
#
# 溜めモーション
#
# @within function asset:artifact/1043.gamma_ray/trigger/4.schedule


# ストレージを設定
    execute store result storage asset:temp SZ.Num int 1 run scoreboard players get @s SZ.CastTick

# 演出マクロを呼び出す
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1043.gamma_ray/trigger/5.1.m with storage asset:temp SZ

# スコアを増やす
    scoreboard players add @s SZ.CastTick 1

# スケジュール設定
    execute if score @s SZ.CastTick matches ..120 run schedule function asset:artifact/1043.gamma_ray/trigger/4.schedule 1t
    execute if score @s SZ.CastTick matches 121 run scoreboard players remove @s SZ.CastTick 1
    execute if score @s SZ.CastTick matches 120 run function asset:artifact/1043.gamma_ray/trigger/6.cast

# リセット
    data remove storage asset:temp SZ