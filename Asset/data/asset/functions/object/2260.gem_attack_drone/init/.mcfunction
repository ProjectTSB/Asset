#> asset:object/2260.gem_attack_drone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2260/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# モデル召喚
    function animated_java:gem_attack_drone/summon {args: {animation: 'summon'}}

# 仮
    scoreboard players set @s 2260.IdleTime 60
