#> asset:object/1094.aa_missile/tick/
#
# Objectのtick時の処理
#
#
# @within asset:object/alias/1094/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

        #tellraw @p [{"nbt":"this","storage": "asset:context"}]

# 発射時の移動
    execute if score @s General.Object.Tick matches ..6 run function asset:object/1094.aa_missile/tick/init_motion

# 加速開始音
    execute if score @s General.Object.Tick matches 7 run playsound minecraft:entity.breeze.death neutral @a[distance=..16] ~ ~ ~ 2 0.5 1

# 加速時の移動
    execute if score @s General.Object.Tick matches 7..26 run function asset:object/1094.aa_missile/tick/accel_motion with storage asset:context this

# 対象不在なら消す
    function asset:object/1094.aa_missile/tick/death_check with storage asset:context this

# 加速後の移動
    execute if score @s General.Object.Tick matches 27.. run function asset:object/1094.aa_missile/tick/inertia_motion with storage asset:context this

# 命中判定
        function asset:object/1094.aa_missile/tick/hit with storage asset:context this

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
