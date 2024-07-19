#> asset:artifact/1098.mirror_piece_of_bygone_days/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle item glass ~ ~1.2 ~ 0.5 0.4 0.5 0.2 250 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 0.6
    playsound block.glass.break player @a ~ ~ ~ 0.4 0.7
    playsound block.glass.break player @a ~ ~ ~ 0.4 0.8
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.1
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.2 0.7
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.2 0.8
    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 2 0.6

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level

# 在りし日の虚像バフ(ID:259)を付与
    data modify storage api: Argument.ID set value 259
    function api:entity/mob/effect/give
