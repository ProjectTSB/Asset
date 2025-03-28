#> asset:artifact/0374.thunder_spell/trigger/turn_to_enemy
#
#
#
# @within function asset:artifact/0374.thunder_spell/trigger/3.main

# ターゲット選定
    execute if entity @e[type=#lib:living,tag=Enemy] positioned ^ ^ ^4 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4] add Target
    tag @e[type=#lib:living,type=!player,tag=Target,distance=..8,sort=nearest,limit=1] add NearestTarget

# 最も近い敵を狙って方向転換
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 if entity @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..4] facing entity @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..4,sort=nearest,limit=1] eyes run function asset:artifact/0374.thunder_spell/trigger/line
