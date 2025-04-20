#> asset:artifact/0777.jade_armor/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0777.jade_armor/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs
# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0.220 0.706 0.545 1 ~ ~0.6 ~ 0.4 0.2 0.4 1 50 normal
    particle rain ~ ~0.6 ~ 0.4 0.2 0.4 0 60 normal @a
    playsound entity.player.splash player @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.hit player @a ~ ~ ~ 0.7 1.5 0
