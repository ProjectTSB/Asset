#> asset:effect/0277.the_world/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0277.the_world/_/end

# タグを消す
    function asset:effect/0277.the_world/end/remove_tag with storage asset:context this
# 時間の束縛を付与する
    data modify storage api: Argument.ID set value 278
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
