#> asset:mob/0224.fake_pumpkin/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0224.fake_pumpkin/_/tick

# スコア加算
    scoreboard players add @s 68.Tick 1

# 演出
    particle dust 1 0.6 0 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a

# 確率で笑う
    execute if predicate lib:random_pass_per/2 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# 一定スコアまでランダム移動する
# 壁に当たったら反射する
    execute if entity @s[scores={68.Tick=..140}] run scoreboard players set $Speed Lib 6
    execute if entity @s[scores={68.Tick=..140}] at @s rotated ~ 0 run function lib:reflection_bullet/
    execute if entity @s[scores={68.Tick=..140}] if predicate lib:random_pass_per/18 at @s run function asset:mob/0224.fake_pumpkin/tick/random_rotate

# 最寄りのプレイヤーの方を向く
    execute if entity @s[scores={68.Tick=140..300}] at @s run tp @s ~ ~ ~ facing entity @p feet

# ハード以上なら最寄りのプレイヤーの方を見てから巨大カボチャを召喚
    execute if entity @s[scores={68.Tick=300..}] if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/10 run function asset:mob/0224.fake_pumpkin/tick/summon_giant_pumpkin
    execute if entity @s[scores={68.Tick=310..}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0224.fake_pumpkin/tick/summon_giant_pumpkin
