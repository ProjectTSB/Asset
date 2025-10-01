#> asset:object/2048.wave_magic/hit_block/in_air
#
#
#
# @within function asset:object/2048.wave_magic/hit_block/

# プレイヤーの方を見る
# Rotation[1]を0に、y座標をn.0に
    execute facing entity @p[gamemode=!spectator,distance=..32] feet rotated ~ 0 align y run tp @s ~ ~ ~ ~ ~

# 速度を変更
    data modify storage asset:context this.MovePerStep set value 0.4

# 着陸Tagを付与
    tag @s add 2048.OnGround

# スコアを弄る
    scoreboard players set @s General.Object.Tick 100
