#> asset:mob/1004.tultaria/tick/wait_time/opening/tick
#
# 召喚時にポーズとる
#
# @within function asset:mob/1004.tultaria/tick/
#> private
# @private
    #declare score_holder RW.TargetModel

# 画面エフェクト
    execute if score @s General.Mob.Tick matches 0 run title @a[distance=..64] times 5 60 1
    execute if score @s General.Mob.Tick matches 0 run title @a[distance=..64] title {"text":""}
    execute if score @s General.Mob.Tick matches 0 run title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"black"}

# 文字表示
    execute if score @s General.Mob.Tick matches 20 run title @a[distance=..64] times 0 60 0
    execute if score @s General.Mob.Tick matches 20 run title @a[distance=..64] title {"text":"\uE017","font":"screen_effect","color":"white"}
    execute if score @s General.Mob.Tick matches 20 at @a[distance=..64] run playsound minecraft:entity.blaze.shoot neutral @p ~ ~ ~ 1 1
    execute if score @s General.Mob.Tick matches 45 run title @a[distance=..64] title {"text":"\uE018","font":"screen_effect","color":"white"}
    execute if score @s General.Mob.Tick matches 45 at @a[distance=..64] run playsound minecraft:entity.blaze.shoot neutral @p ~ ~ ~ 1 1

# デバッグ用、この行動をループ
#    execute if score @s General.Mob.Tick matches 70.. run scoreboard players set @s General.Mob.Tick -40

# 無敵解除、戦闘開始
    execute if score @s General.Mob.Tick matches 65 run function asset:mob/1004.tultaria/tick/wait_time/opening/battle_start
