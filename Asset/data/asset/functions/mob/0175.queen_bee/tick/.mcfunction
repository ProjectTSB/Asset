#> asset:mob/0175.queen_bee/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/175/tick

#return 0

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s General.Mob.Tick matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0175.queen_bee/tick/skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s General.Mob.Tick -60

# 選択したスキル発動
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0175.queen_bee/tick/skill_active
