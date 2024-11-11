#> asset:mob/0376.convict_v2/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/376/tick

# スコアを増やす
    scoreboard players add @s AG.Tick 1

# 最寄りのAJにタグ付け
    tag @e[type=item_display,tag=AG.AJ,distance=..0.01,sort=nearest,limit=1] add AG.AJLink

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s AG.Tick matches 0 if entity @s[tag=!AG.Opening] if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0376.convict_v2/tick/skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s AG.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s AG.Tick -60

# 選択したスキル発動
    execute if score @s AG.Tick matches 0.. run function asset:mob/0376.convict_v2/tick/skill_active

# リセット処理
    execute at @s run function asset:mob/0376.convict_v2/tick/always_reset
