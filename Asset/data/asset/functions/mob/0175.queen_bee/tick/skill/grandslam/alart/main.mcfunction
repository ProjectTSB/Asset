#> asset:mob/0175.queen_bee/tick/skill/grandslam/alart/main
#
#
#
# @within function
#   asset:mob/0175.queen_bee/tick/skill/grandslam/
#   asset:mob/0175.queen_bee/tick/skill/grandslam/alart/main

execute unless block ^ ^ ^0.5 #lib:no_collision run function asset:mob/0175.queen_bee/tick/skill/grandslam/alart/landing
execute positioned ^ ^ ^0.5 if block ^ ^ ^ #lib:no_collision run return run function asset:mob/0175.queen_bee/tick/skill/grandslam/alart/main
