#> asset:effect/0375.charge_of_thunderflash/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0375.charge_of_thunderflash/_/end

# 居合切り
    execute rotated ~ 0 run function asset:effect/0375.charge_of_thunderflash/end/iai/

# 演出
    particle flash ~ ~1 ~ 0 0 0 0 1
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1
    execute anchored eyes positioned ^ ^-0.2 ^1 run playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 1.58
    execute at @s anchored eyes positioned ^ ^-0.2 ^1 run playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 1.58
    execute at @s anchored eyes positioned ^ ^-0.2 ^1 run playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
