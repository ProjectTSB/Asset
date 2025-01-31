#> asset:artifact/0920.dal_i_thalion/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/920/damage/

# 効果を与えるためにタグをつける
    tag @s add PK.EffectClear

# 1tick後に動かす
    schedule function asset:artifact/0920.dal_i_thalion/damage/4.schedule 1t

# 演出
    particle end_rod ~ ~1 ~ 0 1 0 0.2 10
    playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.6
