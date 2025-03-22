#> asset:object/2088.patriot_launcher/tick/missile_launch
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/tick_active


# 発射アニメーション
    execute on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/launch/play

# sound
    playsound entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 1 2 1
    playsound minecraft:entity.breeze.death master @a[distance=..50] ~ ~ ~ 1.0 0.5 1

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2087
    execute on passengers if entity @s[tag=PatriotLauncherRoot] at @s positioned ^-0.63 ^2.71 ^-1.3 run function api:object/summon
