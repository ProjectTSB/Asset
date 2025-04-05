#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/hit
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/recursive

# サウンド
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run playsound block.note_block.pling neutral @s ~ ~ ~ 1 2
