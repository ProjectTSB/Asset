#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick
#
# 最初のTickにやるべきこと
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# プレイヤーが近くにいればmotion
    execute if entity @p[gamemode=!spectator,distance=..10] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/motion

# いなければ@pの方向のRotationを保存しておく
    execute unless entity @p[gamemode=!spectator,distance=..10] facing entity @p[gamemode=!spectator,distance=..64] feet run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/save_rotation

# 攻撃パターン設定
    execute store result score $Random Temporary run random value 0..2
    execute if score $Random Temporary matches 0 run tag @s add 1N.GiantPumpkin1.Center
    execute if score $Random Temporary matches 1 run tag @s add 1N.GiantPumpkin1.Left
    execute if score $Random Temporary matches 2 run tag @s add 1N.GiantPumpkin1.Right
    scoreboard players reset $Random Temporary
