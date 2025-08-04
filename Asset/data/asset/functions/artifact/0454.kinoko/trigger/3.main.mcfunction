#> asset:artifact/0454.kinoko/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0454.kinoko/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Val
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurHealth

# 演出
    tellraw @s [{"text": "<"},{"selector":"@s"},{"text": "> き の こ 万 歳 ！"}]

# 失った体力の20%を回復する

# 現在/最大体力を取得する(100倍)
    function api:data_get/health
    execute store result score $CurHealth Temporary run data get storage api: Health 100
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100

# 失った体力(100倍)を計算し回復する
    execute store result storage api: Argument.Heal double 0.002 run scoreboard players operation $MaxHealth Temporary -= $CurHealth Temporary
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurHealth Temporary
