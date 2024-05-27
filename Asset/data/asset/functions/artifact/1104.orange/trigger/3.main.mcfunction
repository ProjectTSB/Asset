#> asset:artifact/1104.orange/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1104.orange/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 100000000 0.7 0.25 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.3 2

# 最大体力の5%分回復する
    execute store result storage api: Argument.Heal float 0.1 run attribute @s generic.max_health get 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
