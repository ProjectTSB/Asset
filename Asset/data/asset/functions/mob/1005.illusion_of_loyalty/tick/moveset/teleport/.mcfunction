#> asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

#> トゥルの出現地点
# @private
#declare tag RW.Marker.SpawnPoint

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# 自身のモデルのアニメ
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/dodge_back/play

# テレポート実行
    execute if score @s General.Mob.Tick matches 7 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/spread

# アニメを戻す
    execute if score @s General.Mob.Tick matches 32 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/dodge_back/stop
    execute if score @s General.Mob.Tick matches 32 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/play

# リセット
    execute if score @s General.Mob.Tick matches 32 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset
