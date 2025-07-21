#> asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/foreach
# @within function
#   asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/
#   asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/foreach

# データ処理
    data modify storage asset:temp 01.Args set from storage asset:temp 01.Effects[-1]
    execute unless data storage asset:temp 01.Args{Visible:false} run function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/
# 末尾削除
    data remove storage asset:temp 01.Effects[-1]
# 要素があれば再帰
    execute if data storage asset:temp 01.Effects[0] run function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/foreach
