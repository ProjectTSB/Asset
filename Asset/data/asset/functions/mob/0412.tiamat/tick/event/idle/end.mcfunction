#> asset:mob/0412.tiamat/tick/event/idle/end
#
# 待機
#
# @within asset:mob/0412.tiamat/tick/event/idle/

# タイマー初期化
    scoreboard players set @s BG.EventTimer 0

# 行動
    function asset:mob/0412.tiamat/tick/act/
