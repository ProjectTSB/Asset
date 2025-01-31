#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/facing_target.m
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/

# ホーミング
    $execute facing entity $(TargetName) feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-100 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^ ~ ~
