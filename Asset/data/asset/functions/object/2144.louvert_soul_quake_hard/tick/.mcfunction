#> asset:object/2144.louvert_soul_quake_hard/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2144/tick

#> Score
# @private
    #declare score_holder $2144.Temp

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 追尾
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-4 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.35 ~ ~

# VFX
    # スコア調整
    scoreboard players operation $2144.Temp General.Object.Tick = @s General.Object.Tick
    scoreboard players operation $2144.Temp General.Object.Tick %= $8 Const
    execute if score @s General.Object.Tick matches ..120 if score $2144.Temp General.Object.Tick matches 1 positioned ~ ~2 ~ run function asset:object/2144.louvert_soul_quake_hard/tick/summon

# キル
    execute if score @s General.Object.Tick matches 121 run kill @s

# リセット
    scoreboard players reset $2144.Temp General.Object.Tick
