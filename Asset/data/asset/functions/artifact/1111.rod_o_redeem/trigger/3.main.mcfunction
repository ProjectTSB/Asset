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
    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 0.8 0.95
    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 0.8 0.9
    playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 0.8 0.85
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.65
    playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 0.6
    playsound block.beacon.power_select player @a ~ ~ ~ 0.3 1.5 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.3 1.55 0

# 周囲のプレイヤーのデバフを全解除
    function asset:artifact/1111.rod_o_redeem/trigger/4.clear_debuff
