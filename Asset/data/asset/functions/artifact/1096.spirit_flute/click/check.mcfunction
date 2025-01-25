#> asset:artifact/1096.spirit_flute/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1096/click/check


# 精霊の旋律(ID 258)を検索する
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 258
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id

# 付与されていたらCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run tellraw @s [{"text":"演奏中は使用できません。","color":"red"}]
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run tag @s remove CanUsed
