#> asset:artifact/0991.soul_mate/equip/
#
# 神器の装備時の処理
#
# @within function asset:artifact/alias/991/equip

# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.761 0.961 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 10
    particle minecraft:dust 0.459 0.839 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 10

# タグ付与
    tag @s add RJ.SoulMate
# メッセージ
    tellraw @a[tag=RJ.SoulMate] [{"selector":"@s","color":"dark_aqua"},{"text":"がソウルメイトに加入しました。","color":"dark_aqua"}]

# 効果
    data modify storage api: Argument.ID set value 264
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
