#> asset:mob/0363.white_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/363/tick

# 演出
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 normal @a

# super.tick
    function asset:mob/super.tick

# Tickスコア
    scoreboard players add @s General.Mob.Tick 1

# 魔法陣を召喚する
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0363.white_spellbook/tick/magic

# 移動スコア
    scoreboard players add @s A3.MoveTimer 1

# MoveTimerが60/120になるごとに速度と追尾力を変える
    execute if score @s A3.MoveTimer matches 60 run function asset:mob/0363.white_spellbook/set_speed/1
    execute if score @s A3.MoveTimer matches 120 run function asset:mob/0363.white_spellbook/set_speed/0

# 移動スコアリセット
    execute if entity @s[scores={A3.MoveTimer=120..}] run scoreboard players reset @s A3.MoveTimer
