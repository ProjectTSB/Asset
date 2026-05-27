#> asset:object/2242.lawless_chaser_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2242/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    execute if predicate lib:random_pass_per/50 run particle minecraft:enchant ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:smoke ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:dust 0.5 0 1 1.5 ^ ^ ^-0.5 0.25 0.25 0.25 0 2

# 一番近くのプレイヤーのほうをゆっくりと向く。しばらくすると停止。
    execute if score @s General.Object.Tick matches ..200 facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-30 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 移動。
    tp @s ^ ^ ^0.1

# ヒット判定
    execute positioned ~-1 ~-1 ~-1 if entity @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] run function asset:object/2242.lawless_chaser_shot/tick/explode

# 地面と重なっても爆発する
    execute unless block ~ ~ ~ #lib:no_collision run function asset:object/2242.lawless_chaser_shot/tick/explode

# 消滅処理(フェイルセーフ)
    kill @s[scores={General.Object.Tick=300..}]
