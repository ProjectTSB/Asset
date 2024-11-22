#> asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m
#
# ターゲットの方を向く
#
# @input args:
#   TargetName : String
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

# ターゲットの方を向く
    $execute anchored eyes facing entity $(TargetName) eyes anchored feet positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~-3

# AJも一緒に回転
    execute at @s run tp @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ ~

# さらにdisplayも一緒に回転
    execute at @s anchored eyes positioned ^-0.35 ^-0.5 ^8 run tp @e[type=item_display,tag=AC.LaserDisplay,distance=..30,limit=1] ~ ~ ~ ~ ~
