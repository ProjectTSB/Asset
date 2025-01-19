#> asset:mob/0339.twins_sapphiel/app/attack/2.shot_attack
#
# 射撃の処理
#
# @within
#    function asset:mob/0339.twins_sapphiel/app/attack/1.shot
#    function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
#    function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
#    function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
#    function asset:mob/0339.twins_sapphiel/app/attack/2.shot_attack

# 命中確認
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,tag=!9F.Temp.Target.Attack,dx=0] add 9F.Temp.Target.Attack

# 演出
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.4 0 0 0 0 1

# 再帰
    scoreboard players remove @s Temporary 1
    execute if score @s Temporary matches 1.. positioned ^ ^ ^0.6 run function asset:mob/0339.twins_sapphiel/app/attack/2.shot_attack
