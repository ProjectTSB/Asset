#> asset:object/2264.sheep_avenger/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2264.sheep_avenger/tick/

# モデル消去
    particle poof ~ ~0.3 ~ 0.5 0.5 0.5 0.1 10
    function animated_java:sheep_avenger/remove/all

# 消滅
    kill @s
