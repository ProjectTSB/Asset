#> asset:mob/0365.frestchika/tick/phase_transition/
#
# フェイズ以降
#
# @within function asset:mob/0365.frestchika/tick/

# のけぞる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/break/tween {duration:1, to_frame:0}

# のけぞりループ
    execute if score @s General.Mob.Tick matches 10 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/break_loop/tween {duration:1, to_frame:0}

# 立て直すまで煙を吹く
    execute if score @s General.Mob.Tick matches 0..20 run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 2

# 復帰アニメ
    execute if score @s General.Mob.Tick matches 25..35 run tp @s ~ ~0.1 ~
    execute if score @s General.Mob.Tick matches 25 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/recovery/tween {duration:1, to_frame:0}
    execute if score @s General.Mob.Tick matches 30 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 35 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches 45 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 2 1.5
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0365.frestchika/tick/base_move/active_overdrive

# バフ付与
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0365.frestchika/tick/base_move/active_overdrive

# ニュートラルアニメ
    execute if score @s General.Mob.Tick matches 65 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {duration:1, to_frame:0}

# 行動再開
    execute if score @s General.Mob.Tick matches 65 run function asset:mob/0365.frestchika/tick/phase_transition/restart
