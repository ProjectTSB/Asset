#> asset:artifact/0769.shaking_splash/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/769/click/

# スニークしていないときは普通の弾を発射
    execute unless predicate lib:is_sneaking run function asset:artifact/0769.shaking_splash/click/4.shoot

# スニークしているときは再帰ビームを発射
    execute if predicate lib:is_sneaking run function asset:artifact/0769.shaking_splash/click/5.beam

# ラスト1回でgive
    execute if data storage asset:context {BrokeItem:true} run data modify storage api: Argument.ID set value 770
    execute if data storage asset:context {BrokeItem:true} run function api:artifact/give/from_id
