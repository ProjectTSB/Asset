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

# ドロップ
    data modify storage api: Argument.ID set value 1121
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    data modify storage api: Argument.ID set value 1120
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# AJのデータパックを無効化
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_blazing_inferno",Active:false}]
    function asset:datapack/set_activation_state

# 消失
    kill @s
