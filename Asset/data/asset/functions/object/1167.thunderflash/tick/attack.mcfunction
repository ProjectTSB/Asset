#> asset:object/1167.thunderflash/tick/attack
#
#
#
# @within function asset:object/1167.thunderflash/tick/

#
    #playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.8 1.6
    playsound entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 1 1.99
    playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 0
    playsound block.end_portal.spawn player @a[distance=..32] ~ ~ ~ 0.2 2 0.2

    kill @s
