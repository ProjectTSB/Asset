#> asset:object/2049.lightning_magic/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2049/hit_block

# 地面に着く前
    execute if entity @s[tag=!2049.OnGround] run return run function asset:object/2049.lightning_magic/hit_block/in_air

# 地面に着いた後
    execute if entity @s[tag=2049.OnGround] run function asset:object/call.m {method:kill}
