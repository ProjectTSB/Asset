#> asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/second
#
# 二撃目
#
# @within function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/

# まず移動をしておく
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^3 ~ ~
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    # 演出もしておく
        function asset:mob/0341.louvert/tick/general/3.teleport_effect

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# 音
    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 1 0 0
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 1 2 0

# コレクション 5--円.014
    particle dust -100000000 -1 -0.75 2 ^3.748 ^-0.004 ^3.972 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.697 ^0.009 ^4.161 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.638 ^0.025 ^4.348 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.57 ^0.044 ^4.531 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.493 ^0.064 ^4.71 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.407 ^0.087 ^4.886 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.314 ^0.112 ^5.056 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.213 ^0.139 ^5.222 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^3.103 ^0.168 ^5.383 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.987 ^0.2 ^5.538 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.863 ^0.233 ^5.686 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.732 ^0.268 ^5.828 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.595 ^0.305 ^5.964 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.451 ^0.343 ^6.092 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.302 ^0.383 ^6.213 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^2.147 ^0.425 ^6.326 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.986 ^0.468 ^6.431 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.821 ^0.512 ^6.528 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.652 ^0.557 ^6.616 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.479 ^0.604 ^6.696 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.302 ^0.651 ^6.766 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^1.122 ^0.699 ^6.828 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.939 ^0.748 ^6.88 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.754 ^0.798 ^6.923 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.567 ^0.848 ^6.957 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.379 ^0.899 ^6.981 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.19 ^0.949 ^6.995 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^0.0 ^1.0 ^7.0 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-0.19 ^1.051 ^6.995 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-0.379 ^1.101 ^6.981 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-0.567 ^1.152 ^6.957 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-0.754 ^1.202 ^6.923 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-0.939 ^1.252 ^6.88 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.122 ^1.301 ^6.828 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.302 ^1.349 ^6.766 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.479 ^1.396 ^6.696 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.652 ^1.443 ^6.616 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.821 ^1.488 ^6.528 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-1.986 ^1.532 ^6.431 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.147 ^1.575 ^6.326 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.302 ^1.617 ^6.213 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.451 ^1.657 ^6.092 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.595 ^1.695 ^5.964 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.732 ^1.732 ^5.828 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.863 ^1.767 ^5.686 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-2.987 ^1.8 ^5.538 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.103 ^1.832 ^5.383 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.213 ^1.861 ^5.222 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.314 ^1.888 ^5.056 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.407 ^1.913 ^4.886 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.493 ^1.936 ^4.71 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.57 ^1.956 ^4.531 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.638 ^1.975 ^4.348 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.697 ^1.991 ^4.161 0.0 0.0 0.0 0.0 1 normal
    particle dust -100000000 -1 -0.75 2 ^-3.748 ^2.004 ^3.972 0.0 0.0 0.0 0.0 1 normal
# コレクション 5--円.015
    particle dust 0 -1 -1 2 ^3.561 ^0.046 ^3.923 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.512 ^0.059 ^4.103 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.456 ^0.074 ^4.28 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.391 ^0.091 ^4.454 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.318 ^0.111 ^4.625 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.237 ^0.133 ^4.791 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.148 ^0.156 ^4.954 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^3.052 ^0.182 ^5.111 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.948 ^0.21 ^5.264 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.837 ^0.24 ^5.411 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.72 ^0.271 ^5.552 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.595 ^0.305 ^5.687 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.465 ^0.34 ^5.816 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.329 ^0.376 ^5.937 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.187 ^0.414 ^6.052 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^2.039 ^0.454 ^6.16 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.887 ^0.494 ^6.259 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.73 ^0.536 ^6.351 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.569 ^0.579 ^6.435 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.405 ^0.624 ^6.511 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.237 ^0.669 ^6.578 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^1.065 ^0.715 ^6.636 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.892 ^0.761 ^6.686 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.716 ^0.808 ^6.727 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.539 ^0.856 ^6.759 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.36 ^0.904 ^6.782 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.18 ^0.952 ^6.795 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^0.0 ^1.0 ^6.8 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-0.18 ^1.048 ^6.795 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-0.36 ^1.096 ^6.782 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-0.539 ^1.144 ^6.759 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-0.716 ^1.192 ^6.727 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-0.892 ^1.239 ^6.686 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.065 ^1.285 ^6.636 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.237 ^1.331 ^6.578 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.405 ^1.376 ^6.511 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.569 ^1.421 ^6.435 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.73 ^1.464 ^6.351 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-1.887 ^1.506 ^6.259 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.039 ^1.546 ^6.16 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.187 ^1.586 ^6.052 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.329 ^1.624 ^5.937 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.465 ^1.66 ^5.816 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.595 ^1.695 ^5.687 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.72 ^1.729 ^5.552 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.837 ^1.76 ^5.411 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-2.948 ^1.79 ^5.264 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.052 ^1.818 ^5.111 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.148 ^1.844 ^4.954 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.237 ^1.867 ^4.791 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.318 ^1.889 ^4.625 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.391 ^1.909 ^4.454 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.456 ^1.926 ^4.28 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.512 ^1.941 ^4.103 0.0 0.0 0.0 0.0 1 normal
    particle dust 0 -1 -1 2 ^-3.561 ^1.954 ^3.923 0.0 0.0 0.0 0.0 1 normal

# ダメージ
    # 引数の設定
        data modify storage api: Argument.Damage set value 60.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに斬り裂かれ、猛火に焼かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute at @s rotated ~ ~0 positioned ^ ^1 ^1 as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] at @s run function api:damage/
# リセット
    function api:damage/reset

# ハード用
    execute at @s rotated ~ ~0 positioned ^ ^1 ^1 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/hard_soul
