#> asset:artifact/1363.hydra_fang/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1363.hydra_fang/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0 0.5 0 0.75 ~ ~1.2 ~ 0.4 0.4 0.4 0 20
    execute if predicate lib:random_pass_per/40 run playsound entity.spider.step player @a ~ ~ ~ 0.4 2

# 回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.02 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
