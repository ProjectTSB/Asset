#> asset:mob/0392.ecual_first/ai/projectile/announce_line/2.tick
#
# 予告線 Tick処理
#
# @within function asset:mob/0392.ecual_first/tick/

# スコアが正かつ透明状態なら可視化
    execute if score @s AW.ProjectileTick matches 1.. if entity @s[tag=AW.Invisible] run data merge entity @s {teleport_duration:1,transformation:{scale:[0.1f,0.1f,40f]}}
    execute if score @s AW.ProjectileTick matches 1.. if entity @s[tag=AW.Invisible] run tag @s remove AW.Invisible

# スコア反転
    execute if score @s AW.ProjectileTick matches ..-1 run scoreboard players operation @s AW.ProjectileTick *= $-1 Const

# 音
    execute if score @s AW.ProjectileTick matches 1.. as @a[tag=!PlayerShouldInvulnerable,distance=..32] at @s run playsound entity.illusioner.prepare_mirror hostile @s ~ ~ ~ 1 2 0

# TP
    execute positioned ^ ^1.2 ^ run tp @s ^ ^ ^ ~ ~

# スコアが1以下ならキル
    execute if score @s AW.ProjectileTick matches 1 run kill @s

# スコア減少
    scoreboard players remove @s AW.ProjectileTick 1
