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

# ボスドロ
    data modify storage api: Argument.ID set value 928
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

    data modify storage api: Argument.ID set value 1124
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# 消失
    kill @s

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_tutankhamen",Active:false}]
    function asset:datapack/set_activation_state
