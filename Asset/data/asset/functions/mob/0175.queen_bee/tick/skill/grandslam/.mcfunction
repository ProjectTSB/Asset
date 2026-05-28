#> asset:mob/0175.queen_bee/tick/skill/grandslam/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/
# 突進用モデルに変える
    execute if score @s General.Mob.Tick matches 10 on passengers run data modify entity @s item.tag.CustomModelData set value 20053
    execute if score @s General.Mob.Tick matches 10 on passengers positioned as @s run tp @s ~ ~ ~ ~ -70

# 一定時間突進し続ける
    execute if score @s General.Mob.Tick matches 10..15 rotated ~ -90 positioned ^ ^ ^0.5 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 15..25 rotated ~ -90 positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/common/tp/
# 演出
    execute if score @s General.Mob.Tick matches 10..25 at @s run function asset:mob/0175.queen_bee/tick/skill/grandslam/vfx

# 一定時間追尾する
    execute if score @s General.Mob.Tick matches 25..60 if entity @p[gamemode=!spectator,distance=..100] facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s rotated ~ 0 positioned ^ ^ ^0.6 run function asset:mob/0175.queen_bee/tick/common/tp/

# 警告表示
    execute if score @s General.Mob.Tick matches 60 at @s rotated ~ 90 run function asset:mob/0175.queen_bee/tick/skill/grandslam/alart/main

# 落下
    execute if score @s General.Mob.Tick matches 60 at @s on passengers positioned as @s run tp @s ~ ~ ~ 70 ~
# すこしバック
    execute if score @s General.Mob.Tick matches 60..70 rotated ~ 90 positioned ^ ^ ^-0.2 run function asset:mob/0175.queen_bee/tick/common/tp/
# 一定時間突進し続ける
    execute if score @s General.Mob.Tick matches 70..85 rotated ~ 90 positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 75..85 at @s rotated ~ 90 positioned ^ ^ ^2 run function asset:mob/0175.queen_bee/tick/common/tp/

# 一定距離落下したあと、地面にぶつかると爆発する
    execute if score @s General.Mob.Tick matches 75..85 at @s unless block ~ ~-1 ~ #lib:no_collision/ run function asset:mob/0175.queen_bee/tick/skill/grandslam/block_hit
    execute if score @s General.Mob.Tick matches 75..85 at @s unless block ~ ~-2 ~ #lib:no_collision/ run function asset:mob/0175.queen_bee/tick/skill/grandslam/block_hit

# 演出
    execute if score @s General.Mob.Tick matches 75..85 at @s run function asset:mob/0175.queen_bee/tick/skill/grandslam/vfx

# 戻る処理
    execute if score @s General.Mob.Tick matches 110.. run function asset:mob/0175.queen_bee/tick/skill/grandslam/reset
