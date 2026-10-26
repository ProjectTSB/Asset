#> asset:artifact/1360.vintage_wine/tick/2.check_condition
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/1.trigger

#> Private
# @private
    #declare score_holder $11S.Interval

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# 1秒ごとに固有バフを付与
    scoreboard players add @s 11S.Tick 0
    scoreboard players operation $11S.Interval Temporary = @s 11S.Tick
    scoreboard players operation $11S.Interval Temporary %= $20 Const
    execute if entity @s[tag=CanUsed] if score $11S.Interval Temporary matches 0 run function asset:artifact/1360.vintage_wine/tick/3.main
    execute if entity @s[tag=CanUsed] run scoreboard players add @s 11S.Tick 1

# リセット
    scoreboard players reset $11S.Interval Temporary

# CanUsedを削除
    tag @s remove CanUsed
