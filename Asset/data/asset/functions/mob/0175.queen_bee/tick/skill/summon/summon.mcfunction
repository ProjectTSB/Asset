#> asset:mob/0175.queen_bee/tick/skill/summon/summon
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/summon/

# 演出
    playsound entity.bee.death hostile @a ~ ~ ~ 1 1
    execute rotated ~ 0 positioned ^ ^ ^1.4 run particle minecraft:poof ~ ~-0.3 ~ 0.3 0.3 0.3 0.05 30

# モブを出す
    data modify storage api: Argument.ID set value 176
    function api:mob/summon
