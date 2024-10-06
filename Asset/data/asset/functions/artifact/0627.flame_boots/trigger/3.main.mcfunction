#> asset:artifact/0627.flame_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0627.flame_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle flame ~ ~0.3 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1
