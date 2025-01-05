#> asset:mob/0327.eclael/init/
# @within asset:mob/alias/327/init

summon marker ~ ~2 ~ {Tags:["93.Marker.SpawnPoint"]}
execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0327.eclael/summon/app.1.init
