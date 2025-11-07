#> asset:object/1061.azure_jelly/tick/summon_effect/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# メモ
# -80スタートで、0まで行きたいから合計加算角度は80くらいである必要がある

# 召喚時演出
    execute if score @s General.Object.Tick matches 0 run function asset:object/1061.azure_jelly/tick/summon_effect/vfx

# 角度初期化
    execute if score @s General.Object.Tick matches 0 run tp @s ~ ~ ~ ~ -80

# 角度
    execute if score @s General.Object.Tick matches 00..7 at @s run tp @s ~ ~ ~ ~ ~2
    execute if score @s General.Object.Tick matches 08..12 at @s run tp @s ~ ~ ~ ~ ~3
    execute if score @s General.Object.Tick matches 13..18 at @s run tp @s ~ ~ ~ ~ ~4
    execute if score @s General.Object.Tick matches 19..25 at @s run tp @s ~ ~ ~ ~ ~5
    execute if score @s General.Object.Tick matches 26..31 at @s run tp @s ~ ~ ~ ~ ~4
    execute if score @s General.Object.Tick matches 32..39 at @s run tp @s ~ ~ ~ ~ ~3

# 移動
    execute if score @s General.Object.Tick matches 00..05 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.1}
    execute if score @s General.Object.Tick matches 06..12 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.15}
    execute if score @s General.Object.Tick matches 13..22 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.2}
    execute if score @s General.Object.Tick matches 23..30 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.15}
    execute if score @s General.Object.Tick matches 31..35 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.12}
    execute if score @s General.Object.Tick matches 36..39 at @s run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.1}

# 召喚演出終了
    execute if score @s General.Object.Tick matches 40.. run function asset:object/1061.azure_jelly/tick/summon_effect/end
