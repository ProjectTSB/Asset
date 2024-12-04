#> asset:artifact/1043.gamma_ray/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1043/click/

# 発動時のタグとスコア
    tag @s add SZ.Cast
    scoreboard players set @s SZ.CastTick 0

# スケジュール設定
    schedule function asset:artifact/1043.gamma_ray/click/4.schedule 1t
