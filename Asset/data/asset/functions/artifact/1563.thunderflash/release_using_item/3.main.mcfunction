#> asset:artifact/1563.thunderflash/release_using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1563.thunderflash/release_using_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# (最大射程 x2)を設定
    scoreboard players set $MaxRange Temporary 16

# 居合切り
    execute rotated ~ 0 run function asset:artifact/1563.thunderflash/release_using_item/iai/

# 演出
    particle flash ~ ~1 ~ 0 0 0 0 1
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1
    execute anchored eyes positioned ^ ^-0.2 ^1 run playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 1.58
    execute at @s anchored eyes positioned ^ ^-0.2 ^1 run playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 1.58
    execute at @s anchored eyes positioned ^ ^-0.2 ^1 run playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2

# リセット
    scoreboard players reset $MaxRange Temporary
