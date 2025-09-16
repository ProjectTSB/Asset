#> asset:mob/0204.infernal_watcher/tick/update_state/end_frenzy
# @within function asset:mob/0204.infernal_watcher/tick/update_state/

tag @s remove 5O.InFrenzy

item replace entity @s armor.head with minecraft:stick{CustomModelData:20207}
playsound minecraft:block.soul_sand.break hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
playsound minecraft:entity.phantom.flap hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
particle large_smoke ~ ~1.5 ~ 0 0 0 0.05 5
