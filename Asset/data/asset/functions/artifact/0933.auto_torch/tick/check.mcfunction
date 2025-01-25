#> asset:artifact/0933.auto_torch/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/933/tick/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
# いろいろチェックする。
    execute if entity @s[tag=CanUsed] run function asset:artifact/0933.auto_torch/tick/can_set_check
# 前方と足元を見て、どちらかがおけるならチェック入れる
    execute if entity @s[tag=CanUsed,tag=!ExtraCheckFailed] anchored eyes positioned ^ ^ ^4 unless block ~ ~-1 ~ #lib:air if block ~ ~ ~ #lib:air run tag @s add CanTorchSet
    execute if entity @s[tag=CanUsed,tag=!ExtraCheckFailed] unless block ~ ~-1 ~ #lib:air if block ~ ~ ~ #lib:air run tag @s add CanTorchSet
# 置けなかった場合、または置く条件が満たされていなかった場合CanUsed削除
    execute if entity @s[tag=CanUsed,tag=!CanTorchSet] run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed,tag=ExtraCheckFailed] run tag @s remove CanUsed
    execute if entity @s[tag=ExtraCheckFailed] run tag @s remove ExtraCheckFailed
    execute if entity @s[tag=CanTorchSet] run tag @s remove CanTorchSet