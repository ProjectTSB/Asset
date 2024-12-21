#> asset:mob/0106.mini_shulker/_index.d
# @private

#> reset
# @within function asset:mob/0106.mini_shulker/tick/reset
    #declare score_holder $2Y.Random

#> target
# @within function asset:mob/0106.mini_shulker/tick/**
    #declare tag 2Y.Target
    #declare tag 2Y.Rotation

#> teleport
# @within function asset:mob/0106.mini_shulker/tick/teleport/**
    #declare tag 2Y.Spread
    #declare tag 2Y.Append
