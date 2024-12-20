#> asset:artifact/1111.rod_o_redeem/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1111.rod_o_redeem/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:artifact/1111.rod_o_redeem/trigger/vfx
    execute rotated ~90 30 positioned ~ ~0.8 ~ run function asset:artifact/1111.rod_o_redeem/trigger/vfx2
    execute rotated ~90 -30 positioned ~ ~0.8 ~ run function asset:artifact/1111.rod_o_redeem/trigger/vfx2
    particle wax_off ~ ~1.2 ~ 0 0 0 12 60 normal @a

    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 1.5 0.95
    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 1.5 0.9
    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 1.5 0.85
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.65
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.6
    playsound block.beacon.power_select player @a ~ ~ ~ 0.7 1.5 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.7 1.55 0

# 周囲のプレイヤーのデバフを全解除
# デバフ全解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    execute as @a[distance=..2.5] run function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
