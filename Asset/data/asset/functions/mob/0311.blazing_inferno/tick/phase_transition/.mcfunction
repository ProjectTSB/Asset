#> asset:mob/0311.blazing_inferno/tick/phase_transition/
#
# フェイズ移行動作
#
# @within function asset:mob/0311.blazing_inferno/tick/

# のけぞる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/damage/tween {duration:1, to_frame:0}

# 立て直すまで煙を吹く
    execute if score @s General.Mob.Tick matches 0..20 run particle large_smoke ~ ~2 ~ 0.1 0.1 0.1 0.1 5

# 立て直す
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/posing/tween {duration:10, to_frame:0}

# ポージング爆発
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0311.blazing_inferno/tick/phase_transition/roar

# ファイティングポーズを取り直す
    execute if score @s General.Mob.Tick matches 55 as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:10, to_frame:0}

# 行動再開
    execute if score @s General.Mob.Tick matches 65 run function asset:mob/0311.blazing_inferno/tick/phase_transition/restart
