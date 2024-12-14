#> asset:mob/0339.twins_sapphiel/summon/app/1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0339.twins_sapphiel/summon/

# モデルにTeleport_durationを設定
    execute as @e[type=#animated_java:root,tag=9F.ModelRoot,tag=9F.Init] on passengers if entity @s[type=item_display] run data modify entity @s teleport_duration set value 1

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 9F.AnimationTimer 0
    scoreboard players set @s 9F.ActionCount 0
    scoreboard players set @s 9F.DamageCooldown 0

# 初期化開始
    tag @s add 9F.Init

# 登場演出再生
    tag @s add 9F.Skill.Start

# 移動
    execute at @s run tp @s ~ ~-100 ~
