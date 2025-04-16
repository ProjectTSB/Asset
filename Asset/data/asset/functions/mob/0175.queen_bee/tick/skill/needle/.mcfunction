#> asset:mob/0175.queen_bee/tick/skill/needle/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_active

# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 15 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/

# 発砲
    execute if score @s General.Mob.Tick matches 25..30 positioned ~ ~-1.5 ~ positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/skill/needle/shot

# 確率で繰り返す
    execute if score @s General.Mob.Tick matches 30 if predicate lib:random_pass_per/30 run scoreboard players set @s General.Mob.Tick 14

# リセット処理
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0175.queen_bee/tick/skill/reset
