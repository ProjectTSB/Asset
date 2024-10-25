#> asset:object/2053.lastboss_light_pillar_spin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2053/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust 0.667 1 0.976 0.5 ~ ~-0.5 ~ 0.05 0.5 0.05 0 5
    particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.05 2

# 拡大を開始
# どういうわけか、Init処理にコレを入れるといきなり最大サイズになるのでこうしている
    execute if score @s General.Object.Tick matches 3 run function asset:object/2053.lastboss_light_pillar_spin/tick/transform

# ボスの周りを回る
    execute if entity @s[tag=!2053.Release] at @e[type=wither_skeleton,scores={MobID=1004},sort=nearest,limit=1] rotated as @s rotated ~ 0 run tp @s ^ ^1 ^2 ~-22.5 ~

# ボスを中心に飛んでいく
    execute if entity @s[tag=2053.Release] facing entity @e[type=wither_skeleton,scores={MobID=1004},sort=nearest,limit=1] feet rotated ~100 0 run tp @s ^ ^ ^1 ~ ~

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:object/2053.lastboss_light_pillar_spin/tick/damage

# 攻撃
#    execute if score @s General.Object.Tick matches 23 run function asset:object/2052.lastboss_platform_attack_purple/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]
