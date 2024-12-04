#> asset:artifact/0368.fire_spell/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/368/click/

# 敵が居ない場合
    execute positioned ^ ^ ^5 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:artifact/0368.fire_spell/click/4.attack

# 前方に敵が居た場合
    execute positioned ^ ^ ^5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] run function asset:artifact/0368.fire_spell/click/4.attack
