#> asset:mob/0365.frestchika/tick/base_move/skill/overheat/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# アニメーション
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/overheat/start

# しばらく怯んでる
    execute if score @s General.Mob.Tick matches 10 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/break_loop/tween {to_frame: 0, duration: 1}

# 定期的に煙を吹く
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 if score @s General.Mob.Tick matches ..100 run function asset:mob/0365.frestchika/tick/base_move/skill/overheat/vfx
    scoreboard players reset $Interval Temporary

# 復帰アニメ
    execute if score @s General.Mob.Tick matches 100..110 run tp @s ~ ~0.1 ~
    execute if score @s General.Mob.Tick matches 100 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/recovery/tween {duration:1, to_frame:0}
    execute if score @s General.Mob.Tick matches 105 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 110 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches 120 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 2 1.5
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/0365.frestchika/tick/base_move/active_overdrive

# 復帰
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0365.frestchika/tick/base_move/skill/reset
