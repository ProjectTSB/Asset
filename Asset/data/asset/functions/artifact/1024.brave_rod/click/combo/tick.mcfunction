#> asset:artifact/1024.brave_rod/click/combo/tick
#
#
#
# @within function
#   asset:artifact/1024.brave_rod/click/
#   asset:artifact/1024.brave_rod/click/combo/tick
#   asset:artifact/1024.brave_rod/click/
#   asset:artifact/1024.brave_rod/click/rejoin_process

# エンティティに実行させる
    execute as @a[scores={SG.Wait=0..}] at @s run function asset:artifact/1024.brave_rod/click/combo/main

# エンティティがいればループ
    execute if entity @p[scores={SG.Wait=0..}] run schedule function asset:artifact/1024.brave_rod/click/combo/tick 1t