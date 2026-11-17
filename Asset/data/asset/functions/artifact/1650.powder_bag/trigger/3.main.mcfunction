#> asset:artifact/1650.powder_bag/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1650.powder_bag/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle smoke ~ ~1.2 ~ 0 0 0 0.15 40 normal @a
    playsound item.bundle.drop_contents player @a ~ ~ ~ 1 1.44

# 火薬を64個得る
    give @s gunpowder 64
