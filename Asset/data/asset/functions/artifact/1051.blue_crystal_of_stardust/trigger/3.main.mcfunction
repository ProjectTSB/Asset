#> asset:artifact/1051.blue_crystal_of_stardust/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle end_rod ~ ~1.2 ~ 0 0 0 0.2 30
    particle scrape ~ ~1.2 ~ 0 0 0 0.2 30
    particle dust 0.25 0.7 100000000 1 ~ ~1.2 ~ 3 2 3 0 60

# 最大体力の12%分自身含めた周囲のプレイヤーの体力を回復する
    execute store result storage api: Argument.Heal double 1 run attribute @s generic.max_health get 0.12
    function api:heal/modifier
    execute as @a[distance=..8] run function api:heal/
    function api:heal/reset