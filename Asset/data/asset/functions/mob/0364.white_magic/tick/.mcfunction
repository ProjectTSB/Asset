#> asset:mob/0364.white_magic/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0364.white_magic/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で演出
    scoreboard players operation $Interval Temporary = @s A4.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 unless entity @s[scores={A4.Tick=40..}] positioned ~ ~0.2 ~ run function asset:mob/0364.white_magic/tick/vfx
    execute if score $Interval Temporary matches 0 unless entity @s[scores={A4.Tick=40..}] positioned ~ ~0.2 ~ run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.25 2
    execute if score $Interval Temporary matches 0 unless entity @s[scores={A4.Tick=40..}] positioned ~ ~0.2 ~ run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.25 1.8
    scoreboard players reset $Interval Temporary

# スコア
    scoreboard players add @s A4.Tick 1

# 攻撃
    execute if entity @s[scores={A4.Tick=40}] run function asset:mob/0364.white_magic/tick/attack

# 攻撃の演出
# 攻撃は1tickだが演出は数tick持続させる
    execute if entity @s[scores={A4.Tick=40..}] run particle end_rod ~ ~1.5 ~ 0 0 0 0.25 10 normal @a
    execute if entity @s[scores={A4.Tick=40..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.18 1.65
    execute if entity @s[scores={A4.Tick=40..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.18 1.5

# 消滅
    execute if entity @s[scores={A4.Tick=45..}] run kill @s
