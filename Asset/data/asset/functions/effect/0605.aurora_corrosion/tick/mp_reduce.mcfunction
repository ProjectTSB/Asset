#> asset:effect/0605.aurora_corrosion/tick/mp_reduce
#
# MPを減らす
#
# @within function asset:effect/0605.aurora_corrosion/tick/

#> Private
# @private
    #declare score_holder $MPReduce MP減少量
    #declare score_holder $Stack スタック数

# 演出
    playsound block.beacon.power_select player @a ~ ~ ~ 0.2 2 0

# MPを割合で減らす
# MP減少量 = (最大MPの2.5% * Effectのスタック数)

# 最大MPの2.5%の100倍を取得
    function api:mp/get_max
    execute store result score $MPReduce Temporary run data get storage api: Return.MaxMP 2.5

# スタック数を取得
    execute store result score $Stack Temporary run data get storage asset:context Stack

# 計算して0.01倍して代入する
    execute store result storage api: Argument.Fluctuation float -0.01 run scoreboard players operation $MPReduce Temporary *= $Stack Temporary

# MP減らす
    function api:mp/fluctuation

# リセット
    scoreboard players reset $MPReduce Temporary
    scoreboard players reset $Stack Temporary
