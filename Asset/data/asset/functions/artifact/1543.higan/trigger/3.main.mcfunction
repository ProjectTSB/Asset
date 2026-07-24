#> asset:artifact/1543.higan/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1543.higan/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function asset:artifact/1543.higan/trigger/vfx
