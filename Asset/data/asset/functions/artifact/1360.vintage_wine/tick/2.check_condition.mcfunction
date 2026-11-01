#> asset:artifact/1360.vintage_wine/tick/2.check_condition
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# 2秒ごとに固有バフを付与
    execute if entity @s[tag=CanUsed] run scoreboard players remove @s 11S.Tick 1
    execute if entity @s[tag=CanUsed] if score @s 11S.Tick matches ..0 run function asset:artifact/1360.vintage_wine/tick/3.main

# CanUsedを削除
    tag @s remove CanUsed
