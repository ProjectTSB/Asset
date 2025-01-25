#> asset:artifact/0950.residue_of_pumpkin/kill/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/950/kill/


# 演出
    particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 100 normal @a
    particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 100 normal @a
    playsound entity.witch.celebrate player @a ~ ~ ~ 0.8 1.8 0

# 効果
    effect give @s speed 30 0 true
    effect give @s night_vision 30 0 true
    effect give @s saturation 2 0 true
