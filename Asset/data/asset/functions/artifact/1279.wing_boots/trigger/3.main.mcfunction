#> asset:artifact/1279.wing_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1279.wing_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle cloud ~ ~0.1 ~ 0.3 0.05 0.3 0.1 20 normal @a
    playsound disabled_sounds:item.armor.equip_elytra player @a ~ ~ ~ 0.7 0.8
