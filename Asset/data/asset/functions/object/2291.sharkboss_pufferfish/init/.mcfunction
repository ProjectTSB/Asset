#> asset:object/2291.sharkboss_pufferfish/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2291/init

#上を向ける
    tp @s ~ ~ ~ ~ -90

#ガチャ引いて不発弾かどうか分岐
    scoreboard players set @s Temporary 0
    execute store result score @s Temporary run random value 0..2
    execute if score @s Temporary matches 0 run tag @s add 2291.Uxo
    scoreboard players reset @s Temporary

# 継承元の処理
    function asset:object/super.init
