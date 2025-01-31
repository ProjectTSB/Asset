#> asset:artifact/0554.catastrophe/dis_equip
#
# 神器の装備解除時の処理
#
# @within function asset:artifact/alias/554/dis_equip

# バフ削除
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# スコアリセット
    scoreboard players reset @s FE.LatestUseTick
    scoreboard players reset @s FE.DamageSum
