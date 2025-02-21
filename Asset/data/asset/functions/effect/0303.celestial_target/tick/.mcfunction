#> asset:effect/0303.celestial_target/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0303.celestial_target/_/tick

#> Private
# @private
    #declare score_holder $Interval
    #declare score_holder $Duration

execute store result score $Interval Temporary run data get storage asset:context this.Interval
execute store result score $Duration Temporary run data get storage asset:context Duration
scoreboard players operation $Duration Temporary %= $Interval Temporary

execute if score $Duration Temporary matches 0 as 0-0-0-0-0 at @s run function asset:effect/0303.celestial_target/tick/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-80,PitchMax:-65}
execute if score $Duration Temporary matches 0 rotated as 0-0-0-0-0 positioned ^ ^ ^15 facing ^ ^ ^-100 run function asset:effect/0303.celestial_target/tick/summon_star.m

scoreboard players reset $Interval Temporary
scoreboard players reset $Duration Temporary
