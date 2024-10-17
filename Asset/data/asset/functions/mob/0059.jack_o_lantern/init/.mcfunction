#> asset:mob/0059.jack_o_lantern/init/
# @within asset:mob/alias/59/init

playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.5 1
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1.5 1.5
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 50
execute positioned ~ ~-100 ~ run tp @e[type=husk,tag=MobInit,distance=..0.01] ~ ~100 ~
tp @e[type=husk,tag=MobInit,distance=..0.01] ~ ~ ~ facing entity @p
scoreboard players set @e[type=husk,tag=MobInit,distance=..0.01] 1N.Tick -30
