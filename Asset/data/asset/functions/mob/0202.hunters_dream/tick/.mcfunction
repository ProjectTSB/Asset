#> asset:mob/0202.hunters_dream/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/202/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1
# スコアが一定に達したら発動（プレイヤーが周囲にいないとき）
    execute if score @s General.Mob.Tick matches 0 positioned ^ ^ ^5 unless entity @p[gamemode=!spectator,distance=..8] run scoreboard players set @s General.Mob.Tick -60
# スコアが一定に達したら発動（プレイヤーが近くにいるとき）
    execute if score @s General.Mob.Tick matches 0 positioned ^ ^ ^5 if entity @p[gamemode=!spectator,distance=..8] at @s run function asset:mob/0202.hunters_dream/tick/skill_select
# スキル発動中
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0202.hunters_dream/tick/skill_active
