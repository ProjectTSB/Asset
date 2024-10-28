#> asset:mob/0372.tutankhamen/tick/skill/laser/shoot
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

# 再帰発射
    function asset:mob/0372.tutankhamen/tick/skill/laser/recursive
    scoreboard players reset $Recursive Temporary

# 演出
    execute as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 2
