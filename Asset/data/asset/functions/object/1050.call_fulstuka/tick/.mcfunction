#> asset:object/1050.call_fulstuka/tick/
#
# Mobのtick時の処理
#
# @within function asset:object/alias/1050/tick

# スコアを増やす
    scoreboard players add @s 1050.ActionTime 1
    scoreboard players add @s General.Object.Tick 1
# プレイヤーと離れ過ぎたら誰でもいいからプレイヤーにつきまとう
    execute if score @s 1050.ActionTime matches -5 unless entity @p[distance=..9] at @p run function asset:object/1050.call_fulstuka/tick/spread_teleport

# 一定時間で帰る
    execute if score @s 1050.ActionTime matches 0 if score @s General.Object.Tick matches 600.. run function asset:object/1050.call_fulstuka/tick/return

# 敵が周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 1050.ActionTime matches 0 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20] run scoreboard players set @s 1050.ActionTime -10

# 敵が周囲にいたらスキル選択
    execute if score @s 1050.ActionTime matches 0 run function asset:object/1050.call_fulstuka/tick/skill_select

# 選択したスキル発動
    execute if score @s 1050.ActionTime matches 0.. run function asset:object/1050.call_fulstuka/tick/skill_active
