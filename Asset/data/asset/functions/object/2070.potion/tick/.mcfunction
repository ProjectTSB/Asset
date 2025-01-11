#> asset:object/2070.potion/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2070/tick

# 毒ポーションは着弾後に動かずに設置攻撃となる
# それ以外は炸裂して消滅する

# 壊れた毒ポーションの処理
    execute if entity @s[tag=2070.PoisonPotionBroken] run function asset:object/2070.potion/tick/poison/tick

# 壊れた毒ポーションでなければsuper.tick呼び出し
    execute unless entity @s[tag=2070.PoisonPotionBroken] at @s run function asset:object/super.tick
