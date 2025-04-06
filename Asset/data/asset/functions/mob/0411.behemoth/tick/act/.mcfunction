#> asset:mob/0411.behemoth/tick/act/
#
# Mobのtick時の処理
#
# @within
#    function asset:mob/0411.behemoth/tick/event/idle/end
#    function asset:mob/0411.behemoth/tick/event/move/end

# デバッグ用
    # return 0

# 待機モード
    execute if entity @s[tag=BF.State.Wait] run return 0

# 最初に戻る
    scoreboard players add @s BF.ActCount 1

# 最初に戻る
    execute if score @s BF.ActCount matches 8.. run scoreboard players set @s BF.ActCount 0

# 待機
    execute if score @s BF.ActCount matches ..2 run return 0

# 通常攻撃
    execute if score @s BF.ActCount matches 3 run function asset:mob/0411.behemoth/tick/act/attack

# 待機
    execute if score @s BF.ActCount matches 4..6 run return 0

# 詠唱攻撃
    execute if score @s BF.ActCount matches 7 run function asset:mob/0411.behemoth/tick/act/skill
