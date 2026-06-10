#> asset:mob/0461.nectar_plant/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/461/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 既に落下中でなければNoAIを0bにして落下
    execute if entity @s[tag=!461.Fall] if data entity @s {OnGround:0b} run function asset:mob/0461.nectar_plant/tick/fall/start

# 落下中は向きを固定する(NoAIでなくなるため、変な方向を向く可能性がある)
    execute if entity @s[tag=461.Fall] run data modify entity @s Rotation set value [0f,0f]

# 落下中に地面に着いた場合はNoAIを1bにする
    execute if entity @s[tag=461.Fall] if data entity @s {OnGround:1b} run function asset:mob/0461.nectar_plant/tick/fall/start

# プレイヤーが近くにいなければ開花しない
    execute if score @s General.Mob.Tick matches 49 unless entity @p[gamemode=!spectator,distance=..16] run scoreboard players set @s General.Mob.Tick 30

# 時間経過で段階が進む
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0461.nectar_plant/tick/change_model/bloom/0
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0461.nectar_plant/tick/change_model/bloom/1
    execute if score @s General.Mob.Tick matches 150 run function asset:mob/0461.nectar_plant/tick/change_model/bloom/2

# 開花したなら攻撃する
    execute if score @s General.Mob.Tick matches 170 if entity @p[gamemode=!spectator,distance=..16] run function asset:mob/0461.nectar_plant/tick/attack

# 攻撃を終えたら一回しぼむ
    execute if score @s General.Mob.Tick matches 220 run function asset:mob/0461.nectar_plant/tick/change_model/close/0
    execute if score @s General.Mob.Tick matches 230 run function asset:mob/0461.nectar_plant/tick/change_model/close/1
    execute if score @s General.Mob.Tick matches 240 run function asset:mob/0461.nectar_plant/tick/change_model/close/2

# リセット
    execute if score @s General.Mob.Tick matches 240.. run function asset:mob/0461.nectar_plant/tick/reset
