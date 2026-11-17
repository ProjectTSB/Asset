#> asset:artifact/1675.fire_extinguisher/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1675.fire_extinguisher/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 適当に音
    execute anchored eyes positioned ^ ^-0.3 ^1 run playsound block.fire.extinguish player @a ~ ~ ~ 0.6 1.9

# 発射
    execute anchored eyes positioned ^-0.5 ^-0.3 ^0.5 run function asset:artifact/1675.fire_extinguisher/trigger/shoot
