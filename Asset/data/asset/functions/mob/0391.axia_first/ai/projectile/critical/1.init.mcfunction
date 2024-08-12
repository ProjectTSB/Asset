#> asset:mob/0391.axia_first/ai/projectile/critical/1.init
#
# 初期化処理
#
# @within function asset:mob/0391.axia_first/ai/projectile/critical/0.summon

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/

# TP
    execute at 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# タグ付け
    tag @s add AV.CriticalHit

# スコア初期化
    scoreboard players set @s AV.ProjectileTick 0

# ループ処理
    scoreboard players set $AV.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $AV.Temp Temporary -100
    execute at @s if score $AV.Temp Temporary matches 1.. run function asset:mob/0391.axia_first/ai/projectile/sword/1.1.loop

# ループしてもダメだったらキル
    execute if score $AV.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $AV.Temp Temporary
    execute at @s run tag @e[tag=AV.Temp.This,distance=..0.001] remove AV.Temp.This
