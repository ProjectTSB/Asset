#> asset:mob/0123.lexiel_v3/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/123/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 最寄りのAJにタグ付け
    tag @e[type=item_display,tag=3F.AJ,distance=..0.01,sort=nearest,limit=1] add 3F.AJLink

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s General.Mob.Tick matches 0 if entity @s[tag=!3F.Opening] if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0123.lexiel_v3/tick/skill_select

# スペクテイターでないプレイヤーが周囲にいない時に時間がきてしまった場合。スコアを戻す
    execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s General.Mob.Tick -60

# 選択したスキル発動
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0123.lexiel_v3/tick/skill_active

# リセット処理
    execute at @s run function asset:mob/0123.lexiel_v3/tick/always_reset
