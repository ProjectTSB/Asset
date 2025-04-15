#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/shoot
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

# サウンド
    execute positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 2 1.5
    execute positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 2 1.5

# 見た目レーザーと判定レーザー発射
    execute positioned ~ ~1.5 ~ rotated as @s run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/recursive
    execute positioned ~ ~1.5 ~ rotated as @s run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/visual_laser
