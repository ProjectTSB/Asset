#> asset:object/2047.prominence_magic/tick/2nd_blast_ready
#
# 2回目の爆発の予告
#
# @within function asset:object/2047.prominence_magic/tick/

# 演出
    execute rotated ~0 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/vfx
    execute rotated ~180 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/vfx

# ハード以上で追加で2つ
    execute if data storage asset:context this{AddBlast:true} rotated ~90 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/vfx
    execute if data storage asset:context this{AddBlast:true} rotated ~270 ~ positioned ^ ^ ^2.4 run function asset:object/2047.prominence_magic/tick/vfx
