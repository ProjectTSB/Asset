#> asset:artifact/0954.inverted_parachute/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0954.inverted_parachute/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 地面にいる時のみ演出
    execute unless block ~ ~-0.2 ~ #lib:no_collision run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0

# 浮遊を付与
    effect give @s levitation 1 3 true
