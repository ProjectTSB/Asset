#> asset:mob/0412.tiamat/tick/act/
#
# Mobのtick時の処理
#
# @within
#    function asset:mob/0412.tiamat/tick/event/idle/end
#    function asset:mob/0412.tiamat/tick/event/move/end

# デバッグ用
    # return 0

# 待機モード
    execute if entity @s[tag=BG.State.Wait] run return 0

# 最初に戻る
    scoreboard players add @s BG.ActCount 1

# 最初に戻る
    execute if score @s BG.ActCount matches 7.. run scoreboard players set @s BG.ActCount 0

# 待機
    execute if score @s BG.ActCount matches ..1 run return 0

# 通常攻撃
    execute if score @s BG.ActCount matches 2 run function asset:mob/0412.tiamat/tick/act/attack

# 待機
    execute if score @s BG.ActCount matches 3 run return 0

# 通常攻撃
    execute if score @s BG.ActCount matches 4 run function asset:mob/0412.tiamat/tick/act/attack

# 待機
    execute if score @s BG.ActCount matches 5 run return 0

# 詠唱攻撃
    execute if score @s BG.ActCount matches 6 run function asset:mob/0412.tiamat/tick/act/skill
