#> asset:artifact/0633.elec_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0633.elec_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~1.3 ~ 0.4 0.3 0.4 0 6 normal @a
    particle firework ~ ~1.3 ~ 0.4 0.3 0.4 0 6 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.5 0
