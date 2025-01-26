#> asset:mob/0418.astro_zombie/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/418/tick

#> score
# @private
    #declare score_holder $BM.Temp

# プレイヤーが周囲にいる時スコアを増やす
    execute if entity @p[gamemode=!spectator,distance=..16] run scoreboard players add @s General.Mob.Tick 1

# スコアによって移動速度を増加
    execute if score @s General.Mob.Tick matches 501 run effect give @s speed infinite 0 true
    execute if score @s General.Mob.Tick matches 1001 run effect give @s speed infinite 1 true

# 強化演出
    execute if score @s General.Mob.Tick matches 501..1000 run particle dust 0.975 0.8 0.2 0.75 ~ ~1 ~ 0.5 1 0.5 0 2
    execute if score @s General.Mob.Tick matches 1001.. run particle dust 0.975 0.2 0.2 0.75 ~ ~1 ~ 0.5 1 0.5 0 2

# 100Tickごとにジャンプ
    scoreboard players operation $BM.Temp Temporary = @s General.Mob.Tick
    scoreboard players operation $BM.Temp Temporary %= $100 Const
    execute if score $BM.Temp Temporary matches 0 run tp @s ~ ~ ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..16,sort=nearest]
    execute if score $BM.Temp Temporary matches 0 run function asset:mob/0418.astro_zombie/tick/jump

# リセット
    scoreboard players reset $BM.Temp Temporary
