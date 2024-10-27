#> asset:object/2047.prominence_magic/tick/2nd_blast
#
# 2回目の爆発
#
# @within function asset:object/2047.prominence_magic/tick/

# 2箇所で爆発
    execute rotated ~0 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/damage
    execute rotated ~180 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/damage

# ハード以上で追加で2箇所
    execute if data storage asset:context this{AddBlast:true} rotated ~90 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/damage
    execute if data storage asset:context this{AddBlast:true} rotated ~270 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/damage
