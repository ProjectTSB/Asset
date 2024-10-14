#> asset:object/2037.defeated_pumpkin/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2037/hit_block

# 着地Tagを付与
    tag @s add 2037.OnGround

# スコアを弄る
    scoreboard players set @s General.Object.Tick 1000

# 動かないように速度を0に
    data modify storage asset:context this.MovePerStep set value 0

# y座標を良い感じにする
    execute align y run tp @s ~ ~0.5 ~

# デバッグ用
    #tellraw @a [{"score":{"name":"@s","objective":"General.Object.Tick"}}]
    #tellraw @a [{"score":{"name":"@s","objective":"Temporary"}}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
