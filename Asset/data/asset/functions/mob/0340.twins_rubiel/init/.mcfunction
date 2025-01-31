#> asset:mob/0340.twins_rubiel/init/
# @within asset:mob/alias/340/init

# super
    function asset:mob/super.init

# AJモデル召喚
execute positioned ~ ~100 ~ rotated ~ 0 run function animated_java:twins_rubiel/summon {args:{}}

# モデルにTeleport_durationを設定
    execute as @e[tag=9G.ModelRoot,tag=9G.Init] run data modify entity @s teleport_duration set value 1
    execute as @e[tag=9G.ModelRoot,tag=9G.Init] on passengers if entity @s[type=item_display] run data modify entity @s teleport_duration set value 1

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

# bossbar消去
    execute store result storage asset:temp 9G.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0340.twins_rubiel/init/remove_bossbar.m with storage asset:temp 9G
    data remove storage asset:temp 9G

# HP共有
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=9E.Root,sort=nearest,limit=1] MobUUID
