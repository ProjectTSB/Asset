#> asset:artifact/0033.magic_shield/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/33/click/

# 演出
    playsound block.anvil.use player @a ~ ~ ~ 0.5 0.5 0
    particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 1 30

# プレイヤーにバフを付与
    data modify storage api: Argument.ID set value 201
    function api:entity/mob/effect/give
