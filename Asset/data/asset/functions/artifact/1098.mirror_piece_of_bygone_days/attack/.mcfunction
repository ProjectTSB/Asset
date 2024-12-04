#> asset:artifact/1098.mirror_piece_of_bygone_days/attack/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1098/attack/

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
    function api:entity/mob/effect/reset

# 在りし日の虚像バフ(ID:259)を付与
    data modify storage api: Argument.ID set value 259
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
