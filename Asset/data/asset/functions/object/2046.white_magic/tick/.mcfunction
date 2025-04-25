#> asset:object/2046.white_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2046/tick

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 unless entity @s[scores={General.Object.Tick=40..}] positioned ~ ~0.2 ~ run function asset:object/2046.white_magic/tick/vfx
    execute if score $Interval Temporary matches 0 unless entity @s[scores={General.Object.Tick=40..}] positioned ~ ~0.2 ~ run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.25 2
    execute if score $Interval Temporary matches 0 unless entity @s[scores={General.Object.Tick=40..}] positioned ~ ~0.2 ~ run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.25 1.8
    scoreboard players reset $Interval Temporary

# スコア
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=40}] run function asset:object/2046.white_magic/tick/hit

# 攻撃の演出
# 攻撃は1tickだが演出は数tick持続させる
    execute if entity @s[scores={General.Object.Tick=40..}] run particle end_rod ~ ~1.5 ~ 0 0 0 0.3 10 normal @a
    execute if entity @s[scores={General.Object.Tick=40..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.18 1.65
    execute if entity @s[scores={General.Object.Tick=40..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.18 1.5

# 消滅処理
    kill @s[scores={General.Object.Tick=45..}]
