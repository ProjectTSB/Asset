#> asset:artifact/0188.reverse_transcription_magic/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/188/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute store result score $MPRequire Temporary run data get storage asset:context Items.offhand.tag.TSB.MPCost
    execute unless score $MPRequire Temporary matches 1.. run tag @s remove CanUsed
    execute unless score $MPRequire Temporary matches 1.. run playsound ui.button.click player @s ~ ~ ~ 1 2
    execute unless score $MPRequire Temporary matches 1.. run tellraw @s [{"text": "オフハンドにMPを消費する神器を持っている必要があります","color": "red"}]