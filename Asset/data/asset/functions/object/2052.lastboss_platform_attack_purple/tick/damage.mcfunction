#> asset:object/2052.lastboss_platform_attack_purple/tick/damage
#
#
#
# @within function asset:object/2052.lastboss_platform_attack_purple/tick/

# 最寄りの足場を消す
    execute as @e[type=item_display,scores={ObjectID=2026},sort=nearest,limit=1] at @s run function asset:object/2052.lastboss_platform_attack_purple/tick/break
