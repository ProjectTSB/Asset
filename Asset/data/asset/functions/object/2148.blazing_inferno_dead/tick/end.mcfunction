#> asset:object/2148.blazing_inferno_dead/tick/end
#
# 最後に大爆発
#
# @within function asset:object/2148.blazing_inferno_dead/tick/

# サウンド
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 3 0.8
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 3 0.9
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 3 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.5

# パーティクル
    particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 50

# モデルを消す
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this

# 消失
    kill @s
