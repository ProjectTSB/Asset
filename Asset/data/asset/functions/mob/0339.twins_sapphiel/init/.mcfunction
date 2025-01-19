#> asset:mob/0339.twins_sapphiel/init/
# @within asset:mob/alias/339/init

# super
    function asset:mob/super.init

# AJモデル召喚
    execute positioned ~ ~0 ~ rotated ~ 0 run function animated_java:twins_sapphiel/summon {args:{}}

# モデルにTeleport_durationを設定
    execute as @e[tag=9F.ModelRoot,tag=9F.Init] run data modify entity @s teleport_duration set value 1
    execute as @e[tag=9F.ModelRoot,tag=9F.Init] on passengers if entity @s[type=item_display] run data modify entity @s teleport_duration set value 1

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

# bossbar消去
    execute store result storage asset:temp 9F.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0339.twins_sapphiel/init/remove_bossbar.m with storage asset:temp 9F
    data remove storage asset:temp 9F

# HP共有
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=9E.Root,sort=nearest,limit=1] MobUUID
