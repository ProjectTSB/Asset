#> asset:mob/0436.landmine/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/436/tick

# 着地時処理
    execute if data entity @s {OnGround:1b} unless data entity @s NoAI run function asset:mob/0436.landmine/tick/landing

# 起爆
    execute if entity @s[tag=C4.Active] as @a positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] positioned ~0.6 ~0.6 ~0.6 if entity @s[dx=0] run function asset:mob/0436.landmine/tick/detonate/detonate
