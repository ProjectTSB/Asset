#> asset:object/2006.reflect_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2006/tick

#> Temp
# @private
    #declare score_holder $Speed
    #declare score_holder $2006.Temp

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 反射しつつ前進
    scoreboard players set $Speed Lib 8
    function lib:reflection_bullet/

# 4Tickに1回雷を落とす
    scoreboard players operation $2006.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2006.Temp Temporary %= $5 Const
    execute if score $2006.Temp Temporary matches 0 run function asset:object/2006.reflect_thunder/tick/summon
    scoreboard players reset $2006.Temp Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
