#> asset:artifact/0146.mystica_nectar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0146.mystica_nectar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.0050 run data get storage api: Return.MaxHealth 100
    function api:heal/modifier
    function api:heal/

# リセット
    function api:heal/reset
