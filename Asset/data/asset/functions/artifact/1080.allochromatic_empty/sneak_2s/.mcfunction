#> asset:artifact/1080.allochromatic_empty/sneak_2s/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1080/sneak_2s/


# 演出
    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8
    playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.8

# give
    data modify storage api: Argument.ID set value 1079
    function api:artifact/give/from_id