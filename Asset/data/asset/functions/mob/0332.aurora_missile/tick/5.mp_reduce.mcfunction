#> asset:mob/0332.aurora_missile/tick/5.mp_reduce
#
# 実行プレイヤーのMPを減らす
#
# @within function asset:mob/0332.aurora_missile/tick/4.hit

#> Private
# @private
    #declare score_holder $MPReduce MP減少量
    #declare score_holder $Difficulty 難易度値

# MPを割合で減らす
# MP減少量 = (最大MPの2.5% * Effectのスタック数)

# 対象の最大MPの2.5%の100倍を取得
    function api:mp/get_max
    execute store result score $MPReduce Temporary run data get storage api: Return.MaxMP 2.5

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 最大MPの(2.5 x 難易度値)%分MPを減少させる
    execute store result storage api: Argument.Fluctuation float -0.01 run scoreboard players operation $MPReduce Temporary *= $Difficulty Temporary
    function api:mp/fluctuation

# リセット
    scoreboard players reset $MPReduce Temporary
    scoreboard players reset $Difficulty Temporary
