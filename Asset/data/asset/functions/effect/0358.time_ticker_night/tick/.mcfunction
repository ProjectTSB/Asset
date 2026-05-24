#> asset:effect/0358.time_ticker_night/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0358.time_ticker_night/_/tick

# 朝になったら効果切り替え(エンド除く)
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/tick/morning
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run data modify storage asset:context Duration set value 0

# 今がエンド && 前tickにエンドにいない なら朝バフを付与
    execute if predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:false} run function asset:effect/0358.time_ticker_night/tick/morning
    execute if predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:false} run data modify storage asset:context this.InTheEnd set value true

# エンドにいないならエンド判定をfalseにしておく
    execute unless predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:true} run data modify storage asset:context this.InTheEnd set value false
