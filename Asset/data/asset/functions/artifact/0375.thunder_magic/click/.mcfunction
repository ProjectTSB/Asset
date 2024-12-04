#> asset:artifact/0375.thunder_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/375/click/

# 敵が居ない場合
    execute positioned ^ ^ ^7 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7] run function asset:artifact/0375.thunder_magic/click/3.1.circle_particle
    execute positioned ^ ^ ^7 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7] run function asset:artifact/0375.thunder_magic/click/3.2.damage

# 前方に敵が居た場合
    execute positioned ^ ^ ^7 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7,sort=nearest,limit=1] run function asset:artifact/0375.thunder_magic/click/3.1.circle_particle
    execute positioned ^ ^ ^7 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7,sort=nearest,limit=1] run function asset:artifact/0375.thunder_magic/click/3.2.damage

# リセット
    scoreboard players reset $Rotate Temporary
