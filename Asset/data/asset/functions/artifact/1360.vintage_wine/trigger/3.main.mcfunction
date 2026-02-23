#> asset:artifact/1360.vintage_wine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1360.vintage_wine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Val
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurHealth

# 失った体力の5%分回復

# 現在/最大体力を取得する(100倍)
    function api:data_get/health
    execute store result score $CurHealth Temporary run data get storage api: Health 100
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100

# 失った体力(100倍)を計算し回復する
# 失った体力(100倍)のN%を回復量にする
    scoreboard players operation $MaxHealth Temporary -= $CurHealth Temporary
    execute store result storage api: Argument.Heal double 0.003 run scoreboard players get $MaxHealth Temporary
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurHealth Temporary
