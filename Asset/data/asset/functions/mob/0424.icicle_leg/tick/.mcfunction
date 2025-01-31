#> asset:mob/0424.icicle_leg/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/424/tick

# スコア加算
    execute unless score @s General.Mob.Tick matches 1.. if entity @a[gamemode=!spectator,distance=..32] run scoreboard players add @s General.Mob.Tick 1
    execute if score @s General.Mob.Tick matches 2.. run scoreboard players add @s General.Mob.Tick 1

# 付近に対象がいないならスコアリセット
    execute unless entity @a[gamemode=!spectator,distance=..32] run scoreboard players reset @s General.Mob.Tick

# 飛び上がる
    execute if score @s[nbt={OnGround:1b}] General.Mob.Tick matches 0 run function asset:mob/0424.icicle_leg/tick/jump

# 着地で爆発
    execute if score @s[nbt={OnGround:1b}] General.Mob.Tick matches 1 run function asset:mob/0424.icicle_leg/tick/stomp

# 着地後の攻撃
    execute if score @s General.Mob.Tick matches 2.. run function asset:mob/0424.icicle_leg/tick/icicle_rain/

# スコアリセット
    execute if score @s General.Mob.Tick matches 30.. run scoreboard players set @s General.Mob.Tick -50

# 首固定
    data modify entity @s Rotation[1] set value 0.0f
