#> asset:artifact/1694.aqua_bullet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1694.aqua_bullet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^ ^-0.35 ^0.8 run function asset:artifact/1694.aqua_bullet/trigger/vfx/

# 発射
    execute anchored eyes positioned ^ ^-0.35 ^0.2 run function asset:artifact/1694.aqua_bullet/trigger/shoot
