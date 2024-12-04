#> asset:artifact/0252.void_transaction/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/252/click/

# エフェクトがあるか見る
    data modify storage api: Argument.ID set value 204
    function api:entity/mob/effect/get/from_id
# あるなら演出
    execute if data storage api: Return.Effect run tellraw @s [{"text":"［","color":"dark_purple","bold":true},{"text":"奈"},{"text":"落","obfuscated":true},{"text":"の主"},{"text":"］ "},{"text":"二","color":"dark_red","obfuscated":true},{"text":"重取引","color":"dark_red"},{"text":"とは何事だ","color":"dark_red"}]
    execute if data storage api: Return.Effect run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 1.5
# ないなら呼び出し
    execute unless data storage api: Return.Effect run data modify storage api: Argument.ID set value 204
    execute unless data storage api: Return.Effect run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
