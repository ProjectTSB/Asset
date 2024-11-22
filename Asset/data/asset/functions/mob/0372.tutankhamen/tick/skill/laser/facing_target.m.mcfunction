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
    execute at @s run tp @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ 0

# さらにdisplayも一緒に回転
# markerを召喚し、displayにそれを向かせる
    execute at @s rotated ~ 0 anchored eyes positioned ^0.2 ^-0.5 ^1 run summon marker ~ ~ ~ {Tags:["AC.RotationMarker"]}
    execute at @s anchored eyes positioned ^0.2 ^-0.5 ^8 run tp @e[type=item_display,tag=AC.LaserDisplay,distance=..50,limit=1] ~ ~ ~ ~ ~
    execute at @s as @e[type=item_display,tag=AC.LaserDisplay,distance=..30,limit=1] at @s facing entity @e[type=marker,tag=AC.RotationMarker,distance=..50,limit=1] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=AC.RotationMarker,distance=..30]
