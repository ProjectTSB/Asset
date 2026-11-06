#> asset:artifact/1637.precise_mana_controller/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1637.precise_mana_controller/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 演出のみ
    particle composter ~ ~ ~ 0.2 0.5 0.2 1 3
    particle glow ~ ~ ~ 0.2 0.5 0.2 1 3
    particle witch ~ ~ ~ 0.2 0.5 0.2 1 3

    playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.2 1.0
