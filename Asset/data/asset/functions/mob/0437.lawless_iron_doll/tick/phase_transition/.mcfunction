#> asset:mob/0437.lawless_iron_doll/tick/phase_transition/
#
# フェイズ以降
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# のけぞる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/break/tween {duration:1, to_frame:0}

# 立て直すまで煙を吹く
    execute if score @s General.Mob.Tick matches 0..35 run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 2

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 35..57 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-5 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 復帰アニメ
    execute if score @s General.Mob.Tick matches 35 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/recovery/tween {duration:1, to_frame:0}

# サウンド
    execute if score @s General.Mob.Tick matches 35 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 40 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 45 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 50 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.2
    execute if score @s General.Mob.Tick matches 55 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.4

# 構え終了後の演出
    execute if score @s General.Mob.Tick matches 57 run function asset:mob/0437.lawless_iron_doll/tick/phase_transition/vfx

# ニュートラルアニメ
    execute if score @s General.Mob.Tick matches 85 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {duration:1, to_frame:0}

# 行動再開
    execute if score @s General.Mob.Tick matches 85 run function asset:mob/0437.lawless_iron_doll/tick/phase_transition/restart
