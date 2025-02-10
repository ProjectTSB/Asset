#> asset:mob/0411.behemoth/tick/event/idle/end
#
# 待機
#
# @within asset:mob/0411.behemoth/tick/event/idle/

# タイマー初期化
    scoreboard players set @s BF.EventTimer 0

# 行動
    function asset:mob/0411.behemoth/tick/act/
