#> asset:mob/2003.abstract_eye/reflect/forward_block.m
#
#
#
# @within function asset:mob/2003.abstract_eye/reflect/

# 視線先でのxyzの各ベクトルにおいてブロックがないかチェックする
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ 0.0 0.0 positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^$(Speed) rotated as @s positioned ^ ^ ^$(Speed) anchored eyes unless block ^ ^ ^ #lib:no_collision/ run return run data modify storage asset:temp 2003.Check set value true
    $execute at @s rotated ~180 ~ positioned ^ ^ ^$(Speed) rotated ~-180 ~ positioned ^ ^ ^$(Speed) anchored eyes unless block ^ ^ ^ #lib:no_collision/ run return run data modify storage asset:temp 2003.Check set value true
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned 0.0 0.0 ~ positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^$(Speed) rotated as @s positioned ^ ^ ^$(Speed) anchored eyes unless block ^ ^ ^ #lib:no_collision/ run return run data modify storage asset:temp 2003.Check set value true
