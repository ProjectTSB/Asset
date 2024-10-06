#> asset:artifact/0690.steam_core/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0690.steam_core/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ~ ~1.3 ~ run function asset:artifact/0690.steam_core/trigger/vfx
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.5 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.7 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.9 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1.1 0
