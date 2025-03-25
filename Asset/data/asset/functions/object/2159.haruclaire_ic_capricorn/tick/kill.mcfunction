#> asset:object/2159.haruclaire_ic_capricorn/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/

# ajモデル消去
    execute on passengers run function animated_java:ic_capri_aj/remove/this

# 自身を消去
    kill @s
