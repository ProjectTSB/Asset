#> asset:mob/0082.thunder_curtain/tick/thunder1
#
# 雷の処理1
#
# @within function asset:mob/0082.thunder_curtain/tick/

# サウンド演出
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.2 0 0
    execute positioned ^4.5 ^ ^ run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 2 0
    execute positioned ^4.5 ^ ^ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.2 0 0
    execute positioned ^-4.5 ^ ^ run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 2 0
    execute positioned ^-4.5 ^ ^ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.2 0 0

# 移動
    tp @s ^ ^ ^0.45

# 雷を落とす
    function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^-1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^-3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2
    execute positioned ^-4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/thunder2

# 範囲内にいたプレイヤーにダメージを与える
# ハード以上で火力を上げる 難易度上がるとダメージが上がるのはわかった上での実装
    data modify storage api: Argument.Damage set value 22.5f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.Damage set value 30.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=ThunderTarget,distance=..30] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=ThunderTarget,distance=..30] remove ThunderTarget
