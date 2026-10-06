#> asset:object/2049.lightning_magic/tick/on_ground
#
# 一度地面に着いてからの処理
#
# @within function asset:object/2049.lightning_magic/tick/

# 一定間隔で実行
    execute store result storage asset:context this.AttackInterval._ int 0.9999999999 run data get storage asset:context this.AttackInterval._
    execute if data storage asset:context this.AttackInterval{_:0} run function asset:object/2049.lightning_magic/tick/thunder
    execute if data storage asset:context this.AttackInterval{_:0} run data modify storage asset:context this.AttackInterval._ set from storage asset:context this.AttackInterval.Max

# プレイヤーの方向へ誘導する
    execute facing entity @p[gamemode=!spectator,distance=..100] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 現在座標がno_collision && 真下がブロック && 自身が下を向いている なら角度を0に固定する
    execute if block ~ ~ ~ #lib:no_collision/without_fluid unless block ~ ~-0.15 ~ #lib:no_collision/without_fluid at @s if entity @s[x_rotation=0..90] run tp @s ~ ~ ~ ~ 0
