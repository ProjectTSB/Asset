#> asset:mob/0376.convict_v2/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/376/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 最寄りのAJにタグ付け
    tag @e[type=item_display,tag=AG.AJ,distance=..0.01,sort=nearest,limit=1] add AG.AJLink

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s General.Mob.Tick matches 0 if entity @s[tag=!AG.Opening] if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0376.convict_v2/tick/skill_select

# スペクテイターでないプレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s General.Mob.Tick -60

# 選択したスキル発動
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0376.convict_v2/tick/skill_active

# タグ消す
    execute at @s run tag @e[type=item_display,tag=AG.AJ,distance=..0.01,sort=nearest,limit=1] remove AG.AJLink
    tag @a[tag=AG.Hit] remove AG.Hit
