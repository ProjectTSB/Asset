#> asset:object/2003.smoke_bomb/tick/tp.m
#
# マクロTP
#
# @input args
#   X : Double
#   Y : Double
#   Z : Double
# @within function asset:object/2003.smoke_bomb/tick/tp

# 自身の座標がブロックで埋まっていた場合はくっつく
    $execute unless block ~$(X) ~$(Y) ~$(Z) #lib:no_collision/ run tag @s add 2003.Stick

# TPする
    $execute if entity @s[tag=!2003.Stick] positioned ~$(X) ~$(Y) ~$(Z) run tp @s ~ ~ ~ ~ ~
