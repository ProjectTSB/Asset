#> asset:mob/0074.watermelon_bomber/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/74/tick

# スイカ投げのためスコア
    scoreboard players add @s General.Mob.Tick 1

# 投げ前演出
# ノーマル以下なら自身に鈍足を付与する
    execute if entity @s[scores={General.Mob.Tick=0}] if predicate api:global_vars/difficulty/max/2_hard run effect give @s slowness 1 3 true
    execute if entity @s[scores={General.Mob.Tick=0}] run item replace entity @s weapon.mainhand with melon{CustomModelData:20024}
    execute if entity @s[scores={General.Mob.Tick=0}] run playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 1 1

# スイカ投げ
    execute if entity @s[scores={General.Mob.Tick=15..}] if entity @p[distance=..25] anchored eyes positioned ^-0.6 ^-0.35 ^ summon marker run function asset:mob/0074.watermelon_bomber/tick/throw

# リセット
    execute if entity @s[scores={General.Mob.Tick=15..}] run function asset:mob/0074.watermelon_bomber/tick/reset
