#> asset:object/2067.watermelon/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2067/tick

# 少しずつ下を向く
    tp @s ^ ^ ^ ~ ~1


# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick
