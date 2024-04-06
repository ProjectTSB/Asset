#> asset:artifact/1083.tablet_of_oracle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1083.tablet_of_oracle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 1
    particle minecraft:enchant ~ ~2 ~ 0 0 0 1 100

# ランダムな3名のプレイヤーにバフを付与
    execute as @a[distance=..20,sort=random,limit=3] at @s run function asset:artifact/1083.tablet_of_oracle/trigger/4.buff
