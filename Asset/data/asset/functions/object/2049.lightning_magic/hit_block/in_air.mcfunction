#> asset:object/2049.lightning_magic/hit_block/in_air
#
# 地面に着いた時の処理
#
# @within function asset:object/2049.lightning_magic/hit_block/

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p feet

# Tickの値を変更
    scoreboard players set @s General.Object.Tick 100

# Tagを付与
    tag @s add 2049.OnGround

# MovePerStepを変更
    data modify storage asset:context this.MovePerStep set value 0.15

# 一度しか実行しない用Tagを付与
# これが付与されるとhit_block/on_groundが実行されない
    tag @s add 2049.RunOnce
