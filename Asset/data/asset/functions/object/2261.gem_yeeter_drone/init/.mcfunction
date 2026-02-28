#> asset:object/2261.gem_yeeter_drone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2261/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# モデル召喚
    function animated_java:gem_tnt_drone/summon {args: {animation: 'summon'}}

# 仮
    scoreboard players set @s 2261.IdleTime 60

# タイマー計算
    execute store result score @s 2261.PredictionTime run scoreboard players get @s 2261.IdleTime
    scoreboard players remove @s 2261.PredictionTime 30
