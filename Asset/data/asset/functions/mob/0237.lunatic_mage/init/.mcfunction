#> asset:mob/0237.lunatic_mage/init/
# @within asset:mob/alias/237/init

execute positioned ~ ~-100 ~ as @e[type=husk,tag=MobInit,distance=..0.01] run tp @s ~ ~100 ~
execute as @e[type=husk,tag=MobInit,distance=..0.01] run scoreboard players set @s 6L.Tick -60
function asset:mob/0237.lunatic_mage/skill/teleport/vfx
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["Object","Uninterferable","6L.SpawnPoint"]}
