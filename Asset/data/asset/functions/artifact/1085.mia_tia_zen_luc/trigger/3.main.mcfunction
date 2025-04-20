#> asset:artifact/1085.mia_tia_zen_luc/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1085.mia_tia_zen_luc/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dragon_breath ~ ~0.5 ~ 2 0 2 0 100
    playsound entity.ravager.death player @a ~ ~ ~ 1 2
