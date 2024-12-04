#> asset:artifact/0905.book_of_metastasis/click/4.schedule
#
#
#
# @within function
#        asset:artifact/0905.book_of_metastasis/click/
#        asset:artifact/0905.book_of_metastasis/click/4.schedule
#        asset:artifact/0905.book_of_metastasis/rejoin_process

# 火の玉が実行する処理
    execute as @e[type=area_effect_cloud,tag=P5.Bullet] at @s run function asset:artifact/0905.book_of_metastasis/click/5.bullet
    execute as @e[type=area_effect_cloud,tag=P5.Bullet] at @s run function asset:artifact/0905.book_of_metastasis/click/5.bullet

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=P5.Bullet,limit=1] run schedule function asset:artifact/0905.book_of_metastasis/click/4.schedule 1t replace
