#> asset:object/2068.golden_watermelon/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2068/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 20Tick経過で1段目爆発
    execute if entity @s[scores={General.Object.Tick=20}] run function asset:object/2068.golden_watermelon/tick/1st_explode

# 1段目の爆発前ならスーパーメソッド呼び出し
    execute if entity @s[tag=!2068.1stHit] at @s run function asset:object/super.tick

# 1段目の爆発後なら一定tickまで落下
    execute if entity @s[tag=2068.1stHit] if block ~ ~-0.6 ~ #lib:no_collision/ run tp @s ~ ~-0.6 ~

# 2段目爆発
    execute if entity @s[scores={General.Object.Tick=35..}] run function asset:object/2068.golden_watermelon/tick/2nd_explode
