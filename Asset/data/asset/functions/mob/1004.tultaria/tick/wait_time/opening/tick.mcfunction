#> asset:mob/1004.tultaria/tick/wait_time/opening/tick
#
# 召喚時にポーズとる
#
# @within function asset:mob/1004.tultaria/tick/
#> private
# @private
    #declare score_holder RW.TargetModel

# 画面エフェクト
    execute if score @s RW.Tick matches 20 run title @a[distance=..50] times 5 30 2
    execute if score @s RW.Tick matches 20 run title @a[distance=..50] title {"text":""}
    execute if score @s RW.Tick matches 20 run title @a[distance=..50] subtitle {"text":"\uE010","font":"screen_effect","color":"black"}

# 文字表示
    execute if score @s RW.Tick matches 25 run title @a[distance=..50] times 0 30 0
    execute if score @s RW.Tick matches 25 run title @a[distance=..50] title {"text":"\uE011","font":"screen_effect","color":"white"}
    execute if score @s RW.Tick matches 40 run title @a[distance=..50] title {"text":"\uE012","font":"screen_effect","color":"white"}
    execute if score @s RW.Tick matches 40 at @a[distance=..50] run playsound minecraft:entity.blaze.shoot neutral @p ~ ~ ~ 1 1

# デバッグ用、この行動をループ
    #execute if score @s RW.Tick matches 70.. run scoreboard players set @s RW.Tick -40

# 無敵解除、戦闘開始
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/wait_time/opening/battle_start
