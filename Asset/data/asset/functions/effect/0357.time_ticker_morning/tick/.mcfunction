#> asset:effect/0357.time_ticker_morning/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0357.time_ticker_morning/_/tick

# 夜になったら効果切り替え(エンド除く)
# 1tick前のディメンションがエンドの場合は付与せずに解除だけ行う

# エフェクトを付与した直後に、効果時間を0にするとendが呼び出されないバグが起きているため、一時的に効果時間を0にする際はmodifier/removeを呼び出す (修正後は要削除)
    execute if predicate lib:is_night unless predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:false} run function asset:effect/0357.time_ticker_morning/tick/night
    execute if predicate lib:is_night unless predicate lib:dimension/is_end run data modify storage asset:context Duration set value 0
    execute if predicate lib:is_night unless predicate lib:dimension/is_end run function asset:effect/0357.time_ticker_morning/modifier/remove

# 今がエンド && 前tickにエンドにいない なら夜バフを付与
    execute if predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:false} run function asset:effect/0357.time_ticker_morning/tick/night
    execute if predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:false} run data modify storage asset:context this.InTheEnd set value true

# エンドにいないならエンド判定をfalseにしておく
    execute unless predicate lib:dimension/is_end if data storage asset:context this{InTheEnd:true} run data modify storage asset:context this.InTheEnd set value false
