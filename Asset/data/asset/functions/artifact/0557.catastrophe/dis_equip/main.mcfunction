#> asset:artifact/0557.catastrophe/dis_equip/main
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset:artifact/0557.catastrophe/dis_equip/

# バフ削除
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# スコアリセット
    scoreboard players reset @s FE.LatestUseTick
    scoreboard players reset @s FE.DamageSum
