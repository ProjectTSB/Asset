#> asset:effect/0601.conviction/modifier/remove
#
# 補正を削除する
#
# @within function
#       asset:effect/0601.conviction/end/
#       asset:effect/0601.conviction/re-given/
#       asset:effect/0601.conviction/remove/

# 被回復量(-10 * Stack)%
    data modify storage api: Argument.UUID set value [I;1,3,601,0]
    function api:modifier/receive_heal/remove

# スコアをリセット
    scoreboard players reset @s 601.Tick
