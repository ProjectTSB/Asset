#> asset:artifact/1422.overhauled_toaster/using_item/charge/update.m
#
# チャージ段階を更新して音を再生する
#
# @input args:
#     Stack: int
#     Pitch: double
# @within function
#   asset:artifact/1422.overhauled_toaster/using_item/3.main
#   asset:artifact/1422.overhauled_toaster/using_item/charge/

# チャージ段階の演出
    $playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 $(Pitch)

# 表示用Effectのスタックを更新する
    data modify storage api: Argument.ID set value 415
    $data modify storage api: Argument.Stack set value $(Stack)
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
