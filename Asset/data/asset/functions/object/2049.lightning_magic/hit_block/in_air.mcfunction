#> asset:object/2049.lightning_magic/hit_block/in_air
#
# 地面に着いた時の処理
#
# @within function asset:object/2049.lightning_magic/hit_block/

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..100] feet

# Tagを付与
    tag @s add 2049.OnGround

# Passengersのtransformationを変更
    execute on passengers run data modify entity @s transformation.scale set value [2.2f,2.2f,2.2f]
    execute on passengers run data modify entity @s transformation.translation set value [0f,3.3f,0f]

# MovePerStepを変更
    data modify storage asset:context this.MovePerStep set value 0.15
