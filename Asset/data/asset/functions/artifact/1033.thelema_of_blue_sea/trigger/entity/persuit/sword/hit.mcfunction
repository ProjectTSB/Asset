#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/hit
#
#
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

# 演出
    execute positioned ~ ~0.3 ~ run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 0.7 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1.3 0

# 消滅
    kill @s