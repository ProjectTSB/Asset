#> asset:artifact/0899.power_ring/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0899.power_ring/trigger/2.check_condition

#> 個数
# @private
#declare score_holder $Count

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
    particle trial_spawner_detection ~ ~1 ~ 0.8 0.4 0.8 0 20
