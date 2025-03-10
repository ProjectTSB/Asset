#> asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/
#
# 爆弾を投げる
#
# @within function
#   asset:artifact/1206.triple_sparkle_bomb/trigger/3.main
#   asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/with_spread

# 50%の確率で左回転にする
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

# Object召喚
    data modify storage api: Argument.ID set value 1106
    data modify storage api: Argument.FieldOverride.Damage set value 360
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
