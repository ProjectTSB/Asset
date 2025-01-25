#> asset:artifact/0185.increased_cookie/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/185/use_item/


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
# 失った体力(100倍)の0.01倍*5%を回復量にする
    scoreboard players operation $MaxHealth Temporary -= $CurHealth Temporary
    execute store result storage api: Argument.Heal double 0.0005 run scoreboard players get $MaxHealth Temporary
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurHealth Temporary
