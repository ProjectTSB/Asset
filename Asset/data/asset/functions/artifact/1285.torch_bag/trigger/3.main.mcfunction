#> asset:artifact/1285.torch_bag/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1285.torch_bag/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 0.7 0.3 1 ~ ~1.2 ~ 0.2 0.2 0.2 0 40 normal @a

# 松明を64個得る
    give @s torch 64
