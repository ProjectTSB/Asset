#> asset:mob/0204.infernal_watcher/_index.d
# @private

#> rage
# @within function asset:mob/0204.infernal_watcher/**
    #declare score_holder $5O.RageTimer
    #declare tag 5O.InFrenzy

#> target
# @within function asset:mob/0204.infernal_watcher/tick/attack/**
    #declare tag 5O.Target

#> rotate
# @within function asset:mob/0204.infernal_watcher/tick/move/**
    #declare score_holder $5O.Yaw
    #declare score_holder $5O.Pitch
