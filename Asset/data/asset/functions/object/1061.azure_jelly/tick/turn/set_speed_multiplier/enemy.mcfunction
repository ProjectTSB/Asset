#> asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/chase_enemy

# 敵との距離に応じて速度倍率を設定する
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] run data modify storage asset:context this.SpeedMultiplier set value 3
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20] run data modify storage asset:context this.SpeedMultiplier set value 2
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10] run data modify storage asset:context this.SpeedMultiplier set value 1
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run data modify storage asset:context this.SpeedMultiplier set value 0.5
