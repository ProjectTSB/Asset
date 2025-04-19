#> asset:mob/0410.heiloang/tick/event/rage/start_raging
#
# 覚醒
#
# @within asset:mob/0410.heiloang/tick/event/rage/**

# モデル変更
    execute as @e[type=item_display,tag=BE.ModelRoot,distance=..160] run function animated_java:heiloang_aj/variants/rage/apply

# 演出
    particle flash ~ ~2 ~ 5 5 5 0 100 force
    particle end_rod ~ ~2 ~ 5 5 5 0.3 100 force
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 3 0.8
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 3 1.8
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 3 1.5
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3 1.4

# 終了
    tag @s add BE.State.Raging
