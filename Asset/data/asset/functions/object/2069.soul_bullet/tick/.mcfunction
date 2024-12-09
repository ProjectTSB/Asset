#> asset:object/2069.soul_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2069/tick

#> Private
# @private
    #declare score_holder $Temp

# 定期的に追加で演出
    scoreboard players operation $Temp Temporary = @s General.Object.Tick
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score $Temp Temporary matches 0 run function asset:object/2069.soul_bullet/tick/vfx
    execute if score $Temp Temporary matches 0 run playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0.5 0
    execute if score $Temp Temporary matches 0 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.15 1.8 0
    scoreboard players reset $Temp Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
