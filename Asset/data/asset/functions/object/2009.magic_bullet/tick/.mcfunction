#> asset:object/2009.magic_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2009/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s General.Object.Tick matches 2 run function asset:object/2009.magic_bullet/tick/rotate/2
    execute if score @s General.Object.Tick matches 31 run function asset:object/2009.magic_bullet/tick/rotate/3
    execute if score @s General.Object.Tick matches 61 run function asset:object/2009.magic_bullet/tick/rotate/1
    execute if score @s General.Object.Tick matches 91 run function asset:object/2009.magic_bullet/tick/rotate/2
    execute if score @s General.Object.Tick matches 121 run function asset:object/2009.magic_bullet/tick/rotate/3
    execute if score @s General.Object.Tick matches 151 run function asset:object/2009.magic_bullet/tick/rotate/1
    execute if score @s General.Object.Tick matches 181 run function asset:object/2009.magic_bullet/tick/rotate/2
    execute if score @s General.Object.Tick matches 211 run function asset:object/2009.magic_bullet/tick/rotate/3
    execute if score @s General.Object.Tick matches 241 run function asset:object/2009.magic_bullet/tick/rotate/1
    execute if score @s General.Object.Tick matches 271 run function asset:object/2009.magic_bullet/tick/rotate/2

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
