#> asset:object/1176.arrow_of_yumeori/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1176/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 矢の色変える
    # execute if score @s General.Object.Tick matches

    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
