#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/0.summon

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# タグ付け
    tag @s add AW.QuietusRain

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
    
# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# TP
    execute at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..64] rotated as 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
