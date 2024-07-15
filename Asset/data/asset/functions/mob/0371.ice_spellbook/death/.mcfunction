#> asset:mob/0371.ice_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0371.ice_spellbook/_/death

# 演出
    particle snowflake ~ ~1.68 ~ 0 0 0 0.15 50 normal @a
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7
