#> asset:mob/0372.tutankhamen/tick/skill/laser/
#
# こっちにエイムを合わせながらのレーザー連射
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJの開始アニメーション
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/laser/windup

# 演出
    execute if score @s General.Mob.Tick matches 4 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 8 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1

# ビーム開始
    execute if score @s General.Mob.Tick matches 23 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_2_loop/tween {to_frame:0, duration:1}

# 対象に対して追従
    execute if score @s General.Mob.Tick matches 0..100 run function asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m with storage asset:context this

# 予告
    execute if score @s General.Mob.Tick matches 23..63 at @e[type=marker,tag=AC.ModelLocator.Weapon,distance=..8,sort=nearest,limit=1] rotated as @s run function asset:mob/0372.tutankhamen/tick/skill/laser/alert

# 数Tickごとにレーザー
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 if score @s General.Mob.Tick matches 63..100 at @e[type=marker,tag=AC.ModelLocator.Weapon,distance=..8,sort=nearest,limit=1] rotated as @s positioned ^ ^ ^-2 run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot/

# ビーム終了アニメ、ついでにまっすぐ前を向く
    execute if score @s General.Mob.Tick matches 100 run tp @s ~ ~ ~ ~ 0
    execute if score @s General.Mob.Tick matches 100 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_2_end/tween {to_frame:0, duration:1}

# 演出
    execute if score @s General.Mob.Tick matches 105 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches 110 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 2 1.5

# ニュートラルポーズへと
    execute if score @s General.Mob.Tick matches 120 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/tween {to_frame:0, duration:10}

# リセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0372.tutankhamen/tick/skill/reset
