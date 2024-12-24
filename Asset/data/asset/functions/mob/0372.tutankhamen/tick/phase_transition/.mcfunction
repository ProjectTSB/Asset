#> asset:mob/0372.tutankhamen/tick/phase_transition/
#
# フェイズ移行動作
#
# @within function asset:mob/0372.tutankhamen/tick/

# のけぞる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AC.AJ,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/damage/tween {duration:1, to_frame:0}

# 立て直すまで煙を吹く
    execute if score @s General.Mob.Tick matches 0..50 run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 2

# 行動再開
    execute if score @s General.Mob.Tick matches 65 run function asset:mob/0372.tutankhamen/tick/phase_transition/restart
