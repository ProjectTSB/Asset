#> asset:mob/0263.shulker_bullet/hit_entity/
#
# プレイヤーに命中したときの処理
#
# @within function asset:mob/alias/263/hit_entity

execute if entity @s[tag=!7B.Exploded] run function asset:mob/call.m {method:explode}
function api:mob/remove
