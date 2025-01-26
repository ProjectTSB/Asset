#> asset:artifact/0188.reverse_transcription_magic/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/188/click/check

#> private
# @private
    #declare score_holder $MPRequire

# 他にアイテム等確認する場合はここに書く
    function api:data_get/inventory
    execute store result score $MPRequire Temporary run data get storage api: Inventory[{Slot:-106b}].tag.TSB.MPCost
    execute unless score $MPRequire Temporary matches 1.. run tag @s remove CanUsed
    execute unless score $MPRequire Temporary matches 1.. run playsound ui.button.click player @s ~ ~ ~ 1 2
    execute unless score $MPRequire Temporary matches 1.. run tellraw @s [{"text": "オフハンドにMPを消費する神器を持っている必要があります","color": "red"}]
    scoreboard players reset $MPRequire Temporary
