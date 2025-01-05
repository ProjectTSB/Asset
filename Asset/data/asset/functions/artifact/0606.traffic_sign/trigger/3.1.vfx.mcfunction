#> asset:artifact/0606.traffic_sign/trigger/3.1.vfx
#
# VFX
#
# @within function asset:artifact/0606.traffic_sign/trigger/3.main
    
playsound block.anvil.place player @a ~ ~ ~ 0.5 0 0
playsound item.trident.return player @a ~ ~ ~ 1 2
playsound item.trident.throw player @a ~ ~ ~ 1 0.5
playsound item.trident.return player @a ~ ~ ~ 1 2

particle item anvil ~ ~ ~ 1 1 1 0.1 40
particle sweep_attack ~ ~1 ~ 0 0 0 1 2
particle crit ~ ~1 ~ 1 1 1 0.1 20