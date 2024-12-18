#> asset:mob/0106.mini_shulker/_index.d
# @private

#> reset
# @within function asset:mob/0106.mini_shulker/tick/reset
    #declare score_holder $2Y.Random

#> attack
# @within function asset:mob/0106.mini_shulker/tick/attack/**
    #declare score_holder $2Y.Temp
    #declare tag 2Y.Target

#> target
# @within function asset:mob/0106.mini_shulker/tick/select/**
    #declare tag 2Y.This
    #declare tag 2Y.Target

#> teleport
# @within function asset:mob/0106.mini_shulker/tick/teleport/**
    #declare tag 2Y.Spread
    #declare tag 2Y.Append
