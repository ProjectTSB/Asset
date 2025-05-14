#> asset:object/2012.thunder_spear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2012/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スタート段階の処理
    # 回転・演出
        tp @s ~ ~ ~ ~20 0
        execute if entity @s[tag=!2012.NormalElect,tag=!2012.HardElect,tag=!2012.NormalElectCast,tag=!2012.HardElectCast,tag=!2012.Kill] if score @s General.Object.Tick matches 1 run function asset:object/2012.thunder_spear/tick/start/summon_area
        execute if entity @s[tag=!2012.NormalElect,tag=!2012.HardElect,tag=!2012.NormalElectCast,tag=!2012.HardElectCast,tag=!2012.Kill] if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

    # 発動処理
        execute if entity @s[tag=!2012.NormalElect,tag=!2012.HardElect,tag=!2012.NormalElectCast,tag=!2012.HardElectCast,tag=!2012.Kill] if score @s General.Object.Tick matches 50 on passengers run data merge entity @s {start_interpolation:0,transformation:{translation:[0f,3f,0f],scale:[4f,4f,4f]}}
        execute if entity @s[tag=!2012.NormalElect,tag=!2012.HardElect,tag=!2012.NormalElectCast,tag=!2012.HardElectCast,tag=!2012.Kill] if score @s General.Object.Tick matches 60 run function asset:object/2012.thunder_spear/tick/start/cast

# ノーマル帯電
    # 帯電サウンド
        execute if entity @s[tag=2012.NormalElect] if score @s General.Object.Tick matches 1 run playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2
    # 帯電エフェクト
        execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=2012.NormalElect] if score @s General.Object.Tick matches 1 on passengers run data modify entity @s Glowing set value 1b
        execute if entity @s[tag=2012.NormalElect] run function asset:object/2012.thunder_spear/tick/elect/normal_vfx
    # 発動
        execute if entity @s[tag=2012.NormalElectCast] if score @s General.Object.Tick matches 1 run function asset:object/2012.thunder_spear/tick/elect/normal_cast

# ハード帯電
    # 帯電サウンド
        execute if entity @s[tag=2012.HardElect] if score @s General.Object.Tick matches 1 run playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2
    # 帯電エフェクト
        execute if entity @s[tag=2012.HardElect] run function asset:object/2012.thunder_spear/tick/elect/hard_vfx
    # 発動
        execute if entity @s[tag=2012.HardElectCast] if score @s General.Object.Tick matches 1 run function asset:object/2012.thunder_spear/tick/elect/hard_cast

# キル
    # 大きさを小さくする
        execute if entity @s[tag=2012.Kill] if score @s General.Object.Tick matches 1 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}
        execute if entity @s[tag=2012.Kill] if score @s General.Object.Tick matches 20 run kill @s

# 消滅処理
    kill @s[scores={General.Object.Tick=500..}]
