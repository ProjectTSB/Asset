#> asset:object/2093.tutankhamen_death/tick/end
#
#
#
# @within function asset:object/2093.tutankhamen_death/tick/

# パーティクル
    execute at @e[type=marker,tag=AC.ModelLocator.Body,distance=..8,limit=1] run particle minecraft:large_smoke ~ ~ ~ 1 0.1 1 0.05 50

# サウンド
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 1.5

# モデルを消す
    execute as @e[type=item_display,tag=AC.AJ,distance=..8,limit=1] run function animated_java:tutankhamen/remove/this

# 消失
    kill @s
