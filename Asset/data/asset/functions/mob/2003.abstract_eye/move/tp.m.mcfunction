#> asset:mob/2003.abstract_eye/move/tp.m
#
#
#
# @within function asset:mob/2003.abstract_eye/move/

# 1ブロック先が安全 && Speed分先のブロックが安全 ならtpする
    $execute anchored eyes if block ^ ^ ^1 #lib:no_collision/ if block ^ ^ ^$(Speed) #lib:no_collision/ anchored feet run tp @s ^ ^ ^$(Speed)
