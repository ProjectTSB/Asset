function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/play_as_root
function animated_java:louvert/zzzzzzzz/animations/03_5_fire_slash_charge_3/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i