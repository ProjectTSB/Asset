#> asset:mob/0344.louvert_soul_blast/tick/4.1.warning_loop
#
# 注意勧告　ループ処理
#
# @within function
#   asset:mob/0344.louvert_soul_blast/tick/4.warning
#   asset:mob/0344.louvert_soul_blast/tick/4.1.warning_loop

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove $9K.Temp Temporary 1
    execute positioned ~-1 ~-1 ~-1 as @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 0.5 1
    execute if score $9K.Temp Temporary matches 1.. positioned ^ ^ ^1.5 run function asset:mob/0344.louvert_soul_blast/tick/4.1.warning_loop