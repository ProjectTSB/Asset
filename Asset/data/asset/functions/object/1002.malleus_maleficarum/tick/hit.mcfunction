#> asset:object/1002.malleus_maleficarum/tick/hit
#
#
#
# @within function asset:object/1002.malleus_maleficarum/tick/

# 魔女化
    execute positioned ~-1 ~-1 ~-1 as @e[type=#lib:living_without_player,type=!witch,tag=!Uninterferable,tag=!Enemy.Boss,tag=!Uninterferable,dx=1,dy=1,dz=1,sort=nearest,limit=1] at @s run function asset:object/1002.malleus_maleficarum/tick/witchification

# 消滅
    execute on vehicle run kill @s
    kill @s
