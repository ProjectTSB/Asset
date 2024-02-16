#> asset:artifact/0252.void_transaction/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0252.void_transaction/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクトがあるか見る
    data modify storage api: Argument.ID set value 204
    function api:entity/mob/effect/get/from_id
# あるなら演出
    execute if data storage api: Return.Effect run tellraw @s [{"text":"［","color":"dark_purple","bold":true},{"text":"奈"},{"text":"落","obfuscated":true},{"text":"の主"},{"text":"］ "},{"text":"二","color":"dark_red","obfuscated":true},{"text":"重取引","color":"dark_red"},{"text":"とは何事だ","color":"dark_red"}]
    execute if data storage api: Return.Effect run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 1.5
# ないなら呼び出し
    execute unless data storage api: Return.Effect run data modify storage api: Argument.ID set value 204
    execute unless data storage api: Return.Effect run function api:entity/mob/effect/give
