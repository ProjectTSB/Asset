#> asset:effect/0336.self_loathing/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0336.self_loathing/_/given

# 補正あげる
    function asset:effect/0336.self_loathing/modifier/add

# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:24,Duration:80}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 前方に煽りメッセージを召喚する
    execute anchored eyes positioned ^ ^ ^2 run function asset:effect/0336.self_loathing/given/message

# 音
    playsound entity.turtle.egg_break player @s ~ ~ ~ 1 1
