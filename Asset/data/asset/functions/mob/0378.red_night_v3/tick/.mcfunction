#> asset:mob/0378.red_knight_v3/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/377/tick

# スコアを増やす
    scoreboard players add @s AI.Tick 1

# 最寄りのAJにタグ付け
    tag @e[type=item_display,tag=AI.AJ,distance=..0.01,sort=nearest,limit=1] add AI.AJLink

# 動くやつ
    execute if score @s AI.Tick matches -20..0 run function asset:mob/0378.red_knight_v3/tick/99.move/main



# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s AI.Tick matches 0 if entity @s[tag=!AI.Opening,tag=!AI.Skill90] if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0378.red_knight_v3/tick/skill_select

# スペクテイターでないプレイヤーが周囲にいない時に時間がきてしまった場合。スコアを戻す
    execute if score @s AI.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s AI.Tick -60

# 選択したスキル発動
    execute if score @s AI.Tick matches 0.. run function asset:mob/0378.red_knight_v3/tick/skill_active

# リセット処理
    execute at @s run function asset:mob/0378.red_knight_v3/tick/always_reset
