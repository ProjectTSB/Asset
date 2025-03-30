#> asset:artifact/1253.wool_shooter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1253.wool_shooter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 羊毛消費
    clear @s white_wool 16

# 発射する
    execute positioned ^ ^ ^1 run function asset:artifact/1253.wool_shooter/trigger/shoot

# タグ消す
    tag @s remove Landing
