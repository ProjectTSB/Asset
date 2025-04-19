#> asset:artifact/1253.wool_shooter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1253.wool_shooter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 羊毛消費
    clear @s white_wool 8

# プレイヤーが上を向いている場合、45度上向きに発射
    execute if entity @s[x_rotation=-90..-20] rotated ~ -45 positioned ~ ~-0.5 ~ run function asset:artifact/1253.wool_shooter/trigger/shoot_45

# プレイヤーが上も下も向いていない、水平方向に発射
    execute unless entity @s[x_rotation=-90..-20] unless entity @s[x_rotation=20..90] rotated ~ 0 positioned ~ ~-1 ~ run function asset:artifact/1253.wool_shooter/trigger/shoot

# プレイヤーが下を向いている場合、45度下向きに発射
    execute if entity @s[x_rotation=20..90] rotated ~ 45 positioned ~ ~-0.5 ~ run function asset:artifact/1253.wool_shooter/trigger/shoot_45

# タグ消す
    tag @s remove Landing
