#> asset:artifact/1043.gamma_ray/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1043.gamma_ray/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 発動時のタグとスコア
    tag @s add SZ.Cast
    scoreboard players set @s SZ.CastTick 0

# スケジュール設定
    schedule function asset:artifact/1043.gamma_ray/trigger/4.schedule 1t