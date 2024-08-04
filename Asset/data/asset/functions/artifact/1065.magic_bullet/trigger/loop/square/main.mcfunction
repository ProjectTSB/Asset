#> asset:artifact/1065.magic_bullet/trigger/loop/square/main
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/

# スコア
    scoreboard players add @s TL.Tick 1

    execute if entity @s[scores={TL.Tick=2}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={TL.Tick=2}] run data modify entity @s transformation.scale set value [1d,1d,1d]


# 消滅
    execute if entity @s[scores={TL.Tick=40..}] run kill @s

# ループ処理
    schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace
