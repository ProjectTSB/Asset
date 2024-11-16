#> asset:object/2070.potion/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2070/tick

# 毒ポーションの処理
    execute if entity @s[tag=2070.PoisonPotionBreak] run function asset:object/2070.potion/tick/poison

# 下を向く
    tp @s ~ ~ ~ ~ ~1

# スーパーメソッド呼び出し
    execute unless entity @s[tag=2070.PoisonPotionBreak] at @s run function asset:object/super.tick
