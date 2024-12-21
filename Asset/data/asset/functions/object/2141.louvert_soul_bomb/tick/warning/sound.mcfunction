#> asset:object/2141.louvert_soul_bomb/tick/warning/sound
#
# 警告音を鳴らす
#
# @within function asset:object/2141.louvert_soul_bomb/tick/warning/

execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 0.75 1
