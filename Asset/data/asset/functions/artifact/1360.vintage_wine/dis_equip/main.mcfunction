#> asset:artifact/1360.vintage_wine/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1360.vintage_wine/dis_equip/

# 経過時間をリセット
    scoreboard players reset @s 11S.Tick

# 固有バフ解除
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
