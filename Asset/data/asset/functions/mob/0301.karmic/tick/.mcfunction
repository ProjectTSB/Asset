#> asset:mob/0301.karmic/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/301/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 最寄りのAJにタグ付け
    tag @e[type=item_display,tag=8D.AJ,distance=..0.01,sort=nearest,limit=1] add 8D.AJLink

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s General.Mob.Tick matches 0 if entity @s[tag=!8D.SkipSkillSelect,tag=!8D.Opening] if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0301.karmic/tick/skill_select

# スペクテイターでないプレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す。ただし、スキップタグがある時は無視
    execute if score @s General.Mob.Tick matches 0 if entity @s[tag=!8D.SkipSkillSelect,tag=!8D.Opening] unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s General.Mob.Tick -60

# 選択したスキル発動
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0301.karmic/tick/skill_active

# タグ消す
    execute at @s run tag @e[type=item_display,tag=8D.AJ,distance=..0.01,sort=nearest,limit=1] remove 8D.AJLink
