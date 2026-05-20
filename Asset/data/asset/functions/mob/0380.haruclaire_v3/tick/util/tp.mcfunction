#> asset:mob/0380.haruclaire_v3/tick/util/tp
#
# 汎用処理 埋まらないようにtp
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**

# 対象の方を向く
    execute if block ~ ~ ~ #lib:no_collision/ run tp @s ^ ^ ^
