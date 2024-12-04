#> asset:artifact/0371.water_spell/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/371/click/


# 敵が居ない場合
    execute positioned ^ ^ ^5 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:artifact/0371.water_spell/click/3.1.attack

# 前方に敵が居た場合
    execute positioned ^ ^ ^5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] at @s run function asset:artifact/0371.water_spell/click/3.1.attack