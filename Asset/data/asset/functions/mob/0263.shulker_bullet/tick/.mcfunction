#> asset:mob/0263.shulker_bullet/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/263/tick

# 直進
    execute unless entity @s[tag=Death] run function asset:mob/0263.shulker_bullet/tick/rec

# 加算
    scoreboard players add @s General.Mob.Tick 1
# 自滅
    execute if score @s General.Mob.Tick matches 600.. run function api:mob/remove
