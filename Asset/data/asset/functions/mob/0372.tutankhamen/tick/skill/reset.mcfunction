#> asset:mob/0372.tutankhamen/tick/skill/reset
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/**

# スコアをセット
    scoreboard players set @s General.Mob.Tick -80

# アニメーションを元に戻す
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/spawn/stop
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/soul_shot/stop
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/play

# Tagを削除
    tag @s remove AC.Opening
    tag @s remove AC.Laser
    tag @s remove AC.ManyShoot
