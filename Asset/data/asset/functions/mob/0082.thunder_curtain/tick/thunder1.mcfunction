#> asset:mob/0082.thunder_curtain/tick/thunder1
#
# 雷の処理1
#
# @within function asset:mob/0082.thunder_curtain/tick/

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
    data modify storage api: Argument.Damage set value 22.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=ThunderTarget,distance=..30] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=ThunderTarget,distance=..30] remove ThunderTarget
