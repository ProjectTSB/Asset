#> asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

#> トゥルの出現地点
# @private
    #declare tag RW.Marker.SpawnPoint

# 自身のモデルのアニメ
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/dodge_back/tween {to_frame:0,duration:1}

# テレポート実行
    execute if score @s General.Mob.Tick matches 7 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/spread

# プレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 7.. at @s facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s General.Mob.Tick matches 7.. at @s rotated ~ 0 run tp @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 元の体勢へ
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/tween {to_frame:0,duration:10}

# リセット
    execute if score @s General.Mob.Tick matches 32 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/
