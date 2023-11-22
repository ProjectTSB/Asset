#> asset:mob/0332.aurora_missile/tick/4.mp_reduction
#
# 各プレイヤーのMPを減らす処理
#
# @within function asset:mob/0332.aurora_missile/tick/3.hit

# 最大MPを取得
    function api:mp/get_max

# 最大MPの5%/10%を減少させる
    execute store result score $Fluctuation Lib run data get storage api: Return.MaxMP -0.06
    execute if predicate api:global_vars/difficulty/min/hard store result score $Fluctuation Lib run data get storage api: Return.MaxMP -0.10
    function lib:mp/fluctuation