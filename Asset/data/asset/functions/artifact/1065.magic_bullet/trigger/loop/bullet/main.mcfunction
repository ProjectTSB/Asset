#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/

# スコア
    scoreboard players add @s TL.Tick 1

# 移動処理
    function asset:artifact/1065.magic_bullet/trigger/loop/bullet/move
    scoreboard players reset $Recursive Temporary

# 消滅
    execute if entity @s[scores={TL.Tick=40..}] run kill @s

# ループ処理
    schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace
