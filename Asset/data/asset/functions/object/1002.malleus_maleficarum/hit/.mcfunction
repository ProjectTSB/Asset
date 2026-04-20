#> asset:object/1002.malleus_maleficarum/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1002/hit

# super
    function asset:object/super.method

# 魔女化
    execute positioned ~-1 ~-1 ~-1 as @e[type=#lib:living_without_player,type=!witch,tag=!Uninterferable,tag=!Enemy.Boss,tag=!Uninterferable,dx=1,dy=1,dz=1,sort=random,limit=1] at @s run function asset:object/1002.malleus_maleficarum/hit/witchification
