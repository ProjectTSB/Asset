#> asset:object/2070.potion/tick/poison/tick
#
# 毒ポーションの処理
#
# @within function asset:object/2070.potion/tick/

#> Private
# @private
    #declare score_holder $Interval

# 3tick毎に毒を付与
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:object/2070.potion/tick/poison/give
    scoreboard players reset $Interval Temporary

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust 0 0.4 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    particle dust 0.6 0 1 1.5 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    playsound block.fire.extinguish hostile @a ~ ~ ~ 0.4 2 0

# 消滅
    kill @s[scores={General.Object.Tick=60..}]
