#> asset:artifact/0233.reversal/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/233/click/

#> Val
# @private
    #declare score_holder $6H.MP
    #declare score_holder $6H.SetMP

# MP反転
    execute as @a run function asset:artifact/0233.reversal/click/set_mp

# 演出
    particle minecraft:dust 0.7 0.2 1 1 ~ ~1 ~ 0.2 0.5 0.2 0 50 force @a[distance=..30]
    particle minecraft:portal ~ ~1 ~ 0 0 0 2 100 force @a[distance=..30]
    playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 0 1

# 後処理
    scoreboard players reset $6H.MP Temporary
    scoreboard players reset $6H.SetMP Temporary
