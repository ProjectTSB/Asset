#> asset:artifact/1572.after_glow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1572.after_glow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 召喚位置を視点方向に
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1572.after_glow/trigger/pointer
