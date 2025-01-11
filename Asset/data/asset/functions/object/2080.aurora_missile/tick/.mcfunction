#> asset:object/2080.aurora_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2080/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 通常
    execute if entity @s[tag=!2080.Enhanced] run function asset:object/2080.aurora_missile/tick/normal

# 強化版
    execute if entity @s[tag=2080.Enhanced] run function asset:object/2080.aurora_missile/tick/enhanced

# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
