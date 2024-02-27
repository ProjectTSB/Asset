#> asset:mob/0340.twins_rubiel/summon/app/1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0340.twins_rubiel/summon/2.summon

# モデルにTeleport_durationを設定
    execute as @e[type=#animated_java:root,tag=9G.ModelRoot,tag=9G.Init] run data modify entity @s teleport_duration set value 1
    execute as @e[type=#animated_java:root,tag=9G.ModelRoot,tag=9G.Init] on passengers if entity @s[type=item_display] run data modify entity @s teleport_duration set value 1

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 9G.AnimationTimer 0
    scoreboard players set @s 9G.ActionCount 0
    scoreboard players set @s 9G.DamageCooldown 0
    scoreboard players set @s 9G.MoodPoint 0

# 初期化開始
    tag @s add 9G.Init

# 登場演出再生
    tag @s add 9G.Skill.Start

# 移動
    execute at @s run tp @s ~ ~-100 ~
