#> asset:object/2235.frestchika_delay_laser/tick/laser/shoot
#
#
#
# @within function asset:object/2235.frestchika_delay_laser/tick/

# サウンド
    execute positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1.5 1.5
    execute positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 1.5 1.5

# 見た目レーザーと判定レーザー発射
    execute positioned ~ ~ ~ rotated as @s run function asset:object/2235.frestchika_delay_laser/tick/laser/recursive
    execute positioned ~ ~ ~ rotated as @s run function asset:object/2235.frestchika_delay_laser/tick/laser/visual_laser

# 消失
    kill @s
