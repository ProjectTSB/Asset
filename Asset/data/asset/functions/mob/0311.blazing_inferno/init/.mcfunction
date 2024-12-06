#> asset:mob/0311.blazing_inferno/init/
# @within asset:mob/alias/311/init

execute rotated ~ 0 run function animated_java:blazing_inferno/summon
execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neurtal/play
summon marker ~ ~2 ~ {Tags:["8N.Marker.SpawnPoint"],Rotation:[180.0f,0.0f]}
execute positioned ~ ~-100 ~ as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0311.blazing_inferno/summon/init
