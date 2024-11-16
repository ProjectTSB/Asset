#> asset:object/2070.potion/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2070/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 下を向く
    tp @s ~ ~ ~ ~ ~1

# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
