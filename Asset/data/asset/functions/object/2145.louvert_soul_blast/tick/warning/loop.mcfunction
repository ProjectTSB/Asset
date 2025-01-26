#> asset:object/2145.louvert_soul_blast/tick/warning/loop
#
# 
#
# @within function
#   asset:object/2145.louvert_soul_blast/tick/warning/
#   asset:object/2145.louvert_soul_blast/tick/warning/loop

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove $2145.Temp Temporary 1
    execute positioned ~-1 ~-1 ~-1 as @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 0.5 1
    execute if score $2145.Temp Temporary matches 1.. positioned ^ ^ ^1.5 run function asset:object/2145.louvert_soul_blast/tick/warning/loop
