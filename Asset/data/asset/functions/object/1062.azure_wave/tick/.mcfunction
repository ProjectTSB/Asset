#> asset:object/1062.azure_wave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1062/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    function asset:object/1062.azure_wave/tick/sound

# 拡大
    execute if score @s General.Object.Tick matches 3 run function asset:object/1062.azure_wave/tick/expand

# 見えなくなる
    execute if score @s General.Object.Tick matches 29 run function asset:object/1062.azure_wave/tick/disappear

# 消滅処理
    kill @s[scores={General.Object.Tick=38..}]
