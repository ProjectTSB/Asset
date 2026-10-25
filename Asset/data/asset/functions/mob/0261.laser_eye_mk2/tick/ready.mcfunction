#> asset:mob/0261.laser_eye_mk2/tick/ready
#
#
#
# @within function asset:mob/0261.laser_eye_mk2/tick/

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# その場でプレイヤー追尾
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 音を鳴らす
    execute if score @s General.Mob.Tick matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
# 一定スコアで射撃準備
    execute if score @s General.Mob.Tick matches ..20 anchored eyes positioned ^ ^ ^1.6 rotated ~ ~90 run function asset:mob/0261.laser_eye_mk2/tick/vfx

# 一定スコアで射撃
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0261.laser_eye_mk2/tick/shoot

# 一定スコアで終了
    execute if score @s General.Mob.Tick matches 70.. run function asset:mob/0261.laser_eye_mk2/tick/reset
