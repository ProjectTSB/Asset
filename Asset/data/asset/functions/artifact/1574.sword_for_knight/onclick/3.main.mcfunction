#> asset:artifact/1574.sword_for_knight/onclick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1574.sword_for_knight/onclick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
#演出
    playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
# 防御
    tag @s add 1574used
    data modify storage api: Argument.ID set value 1175
    execute positioned ~ ~ ~ run function api:object/summon
