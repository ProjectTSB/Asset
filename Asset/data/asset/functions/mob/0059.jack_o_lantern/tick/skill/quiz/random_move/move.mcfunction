#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/move
#
# 走らせる
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/

#> Private
# @private
    #declare tag FastRun

# 走らせる
# ハードで体力40%以下 または Blesslessで速度1.5倍
    execute if predicate api:global_vars/difficulty/normal if entity @e[type=zombie,tag=this,tag=1N.HealthLess40Per,distance=..40,sort=nearest,limit=1] run tag @s add FastRun
    execute if predicate api:global_vars/difficulty/3_blessless run tag @s add FastRun
    execute if entity @s[tag=!FastRun] run tp @s ^ ^ ^0.6
    execute if entity @s[tag=FastRun] run tp @s ^ ^ ^0.9
    tag @s remove FastRun

# 確率でランダム方向を向く
    execute at @s if predicate lib:random_pass_per/18 run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/rotate

# SpawnMarkerから一定以上離れたら強制的にそっちを向かせる
    execute at @s unless entity @e[type=marker,tag=1N.SpawnMarker,distance=..12] facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..30] feet run tp @s ^ ^ ^1 ~ ~
