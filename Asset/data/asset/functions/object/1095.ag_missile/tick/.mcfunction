#> asset:object/1095.ag_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1095/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 発射音
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 2 1.5 1

# 発射時の移動
    execute if score @s General.Object.Tick matches ..6 run function asset:object/1095.ag_missile/tick/init_motion

# 加速開始音
    execute if score @s General.Object.Tick matches 7 run playsound minecraft:entity.breeze.death player @a[distance=..16] ~ ~ ~ 2 0.5 1

# 加速時の移動
    execute if score @s General.Object.Tick matches 7..12 run function asset:object/1095.ag_missile/tick/accel_motion1 with storage asset:context this
    execute if score @s General.Object.Tick matches 13..26 run function asset:object/1095.ag_missile/tick/accel_motion2 with storage asset:context this

# 加速後の移動
    execute if score @s General.Object.Tick matches 27.. run function asset:object/1095.ag_missile/tick/inertia_motion with storage asset:context this

# 命中判定
        function asset:object/1095.ag_missile/tick/hit with storage asset:context this

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
