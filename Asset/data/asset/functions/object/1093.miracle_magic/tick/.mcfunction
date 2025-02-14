#> asset:object/1093.miracle_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1093/tick

#> Private
# @private
    #declare score_holder $Interval

# vfx
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 rotated ~ ~90 run function asset:object/1093.miracle_magic/tick/vfx
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 発動
    execute if score @s General.Object.Tick matches 10 run function asset:object/1093.miracle_magic/tick/shoot
    execute if score @s General.Object.Tick matches 10 run playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 1 0.6

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
