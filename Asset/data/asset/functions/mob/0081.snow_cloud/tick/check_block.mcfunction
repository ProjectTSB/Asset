#> asset:mob/0081.snow_cloud/tick/check_block
#
# 再帰処理でプレイヤーとの間にブロックがないかチェックする
#
# @within function
#   asset:mob/0081.snow_cloud/tick/snowing
#   asset:mob/0081.snow_cloud/tick/check_block

# 再帰終了条件を満たしたときの効果
    execute if entity @e[type=polar_bear,scores={MobID=81},distance=..1] at @s run function asset:mob/0081.snow_cloud/tick/snow_damage

# 再帰ループ
    execute unless entity @e[type=polar_bear,scores={MobID=81},distance=..1] if block ~ ~1 ~ #lib:no_collision/without_fluid positioned ~ ~1 ~ run function asset:mob/0081.snow_cloud/tick/check_block
