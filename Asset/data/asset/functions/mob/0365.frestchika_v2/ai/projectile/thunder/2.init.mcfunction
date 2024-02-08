#> asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.init
#
# ゼクスサンダー 初期化設定
#
# @within function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon

# スコア初期化
    scoreboard players set @s A5.ProjectileTick 0

# ループ処理
    scoreboard players set $A5.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $A5.Temp Temporary -100
    execute if score $A5.Temp Temporary matches 1.. run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.1.init_loop

# ループしてもダメだったらキル
    execute if score $A5.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $A5.Temp Temporary
    tag @s remove A5.Temp.This