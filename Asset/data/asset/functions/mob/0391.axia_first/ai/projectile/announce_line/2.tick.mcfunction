#> asset:mob/0391.axia_first/ai/projectile/announce_line/2.tick
#
# 予告線 Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコアが正かつ透明状態なら可視化
    execute if score @s AV.ProjectileTick matches 1.. if entity @s[tag=AV.Invisible] run data merge entity @s {teleport_duration:1,item:{id:"minecraft:red_stained_glass",Count:1b}}
    execute if score @s AV.ProjectileTick matches 1.. if entity @s[tag=AV.Invisible] run tag @s remove AV.Invisible

# スコア反転
    execute if score @s AV.ProjectileTick matches ..-1 run scoreboard players operation @s AV.ProjectileTick *= $-1 Const

# 音
    execute if score @s AV.ProjectileTick matches 1.. as @a[tag=!PlayerShouldInvulnerable,distance=..32] at @s run playsound entity.illusioner.prepare_mirror hostile @s ~ ~ ~ 1 2 0

# TP
    execute positioned ^ ^1.2 ^ run tp @s ^ ^ ^ ~ ~

# スコアが1以下ならキル
    execute if score @s AV.ProjectileTick matches 1 run kill @s

# スコア減少
    scoreboard players remove @s AV.ProjectileTick 1
