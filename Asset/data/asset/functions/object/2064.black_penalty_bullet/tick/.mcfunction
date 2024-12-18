#> asset:object/2064.black_penalty_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2064/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# プレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..128] run function asset:object/2064.black_penalty_bullet/tick/facing

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s General.Object.Tick matches 2 run function asset:object/2064.black_penalty_bullet/tick/rotate/2
    execute if score @s General.Object.Tick matches 31 run function asset:object/2064.black_penalty_bullet/tick/rotate/3
    execute if score @s General.Object.Tick matches 61 run function asset:object/2064.black_penalty_bullet/tick/rotate/1
    execute if score @s General.Object.Tick matches 91 run function asset:object/2064.black_penalty_bullet/tick/rotate/2
    execute if score @s General.Object.Tick matches 121 run function asset:object/2064.black_penalty_bullet/tick/rotate/4

# 予告線
    execute if score @s General.Object.Tick matches 101..119 run function asset:object/2064.black_penalty_bullet/tick/announce_line

# 発射
    execute if score @s General.Object.Tick matches 120 run function asset:object/2064.black_penalty_bullet/tick/cast/

# 消滅処理
    kill @s[scores={General.Object.Tick=150..}]
