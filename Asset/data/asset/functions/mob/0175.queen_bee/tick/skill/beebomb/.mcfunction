#> asset:mob/0175.queen_bee/tick/skill/beebomb/
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

# 一定時間上昇
    execute if score @s General.Mob.Tick matches 10..13 rotated ~ -90 positioned ^ ^ ^0.5 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 13..15 rotated ~ -90 positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 15..25 rotated ~ -90 positioned ^ ^ ^0.3 run function asset:mob/0175.queen_bee/tick/common/tp/
# 上が壁ならスコアスキップ
    execute if score @s General.Mob.Tick matches 10..25 unless block ~ ~2 ~ #lib:no_collision run scoreboard players set @s General.Mob.Tick 25

# 回転しながら進む
    execute if score @s General.Mob.Tick matches 25..125 at @s rotated ~6 0 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 25..125 at @s rotated ~6 0 positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_collision run function asset:mob/0175.queen_bee/tick/skill/beebomb/wall_hit
# 一定時間追尾する
    execute if score @s General.Mob.Tick matches 25..125 at @s if entity @p[gamemode=!spectator,distance=10..100] facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s rotated ~ 0 positioned ^ ^ ^0.6 run function asset:mob/0175.queen_bee/tick/common/tp/
# 中央マーカーから離れ過ぎたら向きを変える
    execute if score @s General.Mob.Tick matches 25..125 at @s if entity @e[type=marker,tag=4V.SpawnMarker,distance=30..100,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..100] eyes rotated ~ 0 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 25..125 run particle minecraft:poof ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force
# Ntickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
# Ntickおきに実行
    execute if predicate api:global_vars/difficulty/max/normal run scoreboard players operation $Interval Temporary %= $4 Const
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players operation $Interval Temporary %= $2 Const
    execute if score @s General.Mob.Tick matches 25..105 if score $Interval Temporary matches 0 run function asset:mob/0175.queen_bee/tick/skill/beebomb/summon
# リセット
    scoreboard players reset $Interval

# ハチを固定する
    execute if score @s General.Mob.Tick matches 25..105 run scoreboard players set @e[type=item_display,tag=Projectile,scores={ObjectID=2224},distance=..40] General.Object.Tick 0

# プレイヤーに寄ってきてくれる
    execute if score @s General.Mob.Tick matches 125..220 at @s if entity @p[gamemode=!spectator,distance=..100] facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 125..220 at @s if entity @p[gamemode=!spectator,distance=..4] run function asset:mob/0175.queen_bee/tick/skill/beebomb/reset
# 戻る処理
    execute if score @s General.Mob.Tick matches 220.. run function asset:mob/0175.queen_bee/tick/skill/beebomb/reset
