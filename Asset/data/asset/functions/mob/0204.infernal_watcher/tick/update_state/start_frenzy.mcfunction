#> asset:mob/0204.infernal_watcher/tick/update_state/start_frenzy
# @within function asset:mob/0204.infernal_watcher/tick/update_state/

tag @s add 5O.InFrenzy

item replace entity @s armor.head with minecraft:stick{CustomModelData:20208}
playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
playsound ogg:mob.blaze.breathe4 hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
particle lava ~ ~1.5 ~ 0 0 0 0.2 5
