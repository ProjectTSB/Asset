#> asset:artifact/1318.blue_bouquet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1318.blue_bouquet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# Tag
    tag @s add 10M.Equip

# 演出
    particle scrape ~ ~1.2 ~ 0 0 0 5 40 normal @a
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1318.blue_bouquet/trigger/vfx/circle
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1318.blue_bouquet/trigger/vfx/petal
    playsound ogg:ambient.nether.crimson_forest.shine2 player @a[distance=..12] ~ ~ ~ 0.7 1.3
