#> asset:mob/0376.convict_v2/tick/06.skill_axe6/grab
#
#
#
# @within function asset:mob/0376.convict_v2/tick/06.skill_axe6/main

# つかみ判定が着たら、スコアを飛ばしてアニメーションを変えて色々する
    scoreboard players set @s General.Mob.Tick 999
    execute as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack6_1/stop
    execute as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack6_2/play

# プレイヤー掴む
    execute positioned ^ ^ ^0.7 positioned ~ ~1 ~ if entity @p[distance=..5] run tp @p ~ ~ ~ facing entity @s feet
    execute positioned ^ ^ ^0.7 positioned ~ ~1 ~ if entity @p[distance=..5] run effect give @p blindness 5 0 true
    execute positioned ^ ^ ^0.7 positioned ~ ~1 ~ if entity @p[distance=..5] run effect give @p darkness 5 0 true

#演出
    playsound minecraft:ambient.nether_wastes.mood hostile @a
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 0
