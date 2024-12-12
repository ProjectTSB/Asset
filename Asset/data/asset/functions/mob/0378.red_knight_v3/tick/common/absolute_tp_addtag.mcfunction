#> asset:mob/0378.red_knight_v3/tick/common/absolute_tp_addtag
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/**


# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.8
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2

# TPを確定させるためにタグを与える
    tag @s add AI.TPConfirmed

# 自身をその場所まで持っていく(雑床埋まり対策をしない)
    tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
