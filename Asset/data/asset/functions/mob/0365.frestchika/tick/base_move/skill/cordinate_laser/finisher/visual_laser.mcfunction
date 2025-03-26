#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/visual_laser
#
# 例によってちょっと速く発動する見た目
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2
# 演出
    playsound ogg:block.respawn_anchor.deplete2 player @p ~ ~ ~ 2 1
    playsound tsb_sounds:blaster1 player @p ~ ~ ~ 2 1
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..16]

# レーザー召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[5.0f,20f,5.0f],Color:6209279,DisappearInterpolation:3,LifeTime:15}
    execute positioned ~ ~20 ~ rotated ~ 90 run function api:object/summon
