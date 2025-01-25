#> asset:artifact/0375.thunder_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/375/click/


#> Private
# @private
    #declare tag Target

# 前方の敵にTagをつける
    execute positioned ^ ^ ^7 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..7] add Target

# 敵が居ない場合
    execute positioned ^ ^ ^7 unless entity @e[type=#lib:living,tag=Target,distance=..7] run function asset:artifact/0375.thunder_magic/click/damage

# 前方に敵が居た場合
    execute positioned ^ ^ ^7 if entity @e[type=#lib:living,tag=Target,distance=..7] at @s at @e[type=#lib:living,tag=Target,distance=..20,sort=nearest,limit=1] run function asset:artifact/0375.thunder_magic/click/damage

# Tagを削除
    execute positioned ^ ^ ^7 run tag @e[type=#lib:living,tag=Target,distance=..7] remove Target
