#> asset:mob/0301.karmic/tick/common/absolute_tp
#
#
#
# @within function asset:mob/0301.karmic/tick/**


# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2


# 自身をその場所まで持っていく(雑床埋まり対策をしない)
    tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
