#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# モデルをプレイヤーに向ける
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ ~

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_3_right/tween {to_frame:0,duration:1}

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:1}

# 射撃
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 if score @s General.Mob.Tick matches 10..50 positioned ~ ~1.5 ~ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/shot/

# ワープ
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
