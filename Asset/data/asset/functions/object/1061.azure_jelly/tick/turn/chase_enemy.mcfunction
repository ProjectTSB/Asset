#> asset:object/1061.azure_jelly/tick/turn/chase_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# 最寄りの敵の方を見る
    tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..16,sort=nearest,limit=1] eyes
