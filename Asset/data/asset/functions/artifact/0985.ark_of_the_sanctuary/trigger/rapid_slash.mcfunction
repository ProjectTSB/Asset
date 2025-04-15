#> asset:artifact/0985.ark_of_the_sanctuary/trigger/rapid_slash
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop


# ラピッドスラッシュ
    execute if score @s RD.BurstCount matches 8 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash3
    execute if score @s RD.BurstCount matches 6 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash2
    execute if score @s RD.BurstCount matches 4 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash4
    execute if score @s RD.BurstCount matches 2 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash2

# ダメージ: 8tick目は3.mainで発動してるのでやらない。
    execute if score @s RD.BurstCount matches 6 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/damage
    execute if score @s RD.BurstCount matches 4 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/damage
    execute if score @s RD.BurstCount matches 2 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/damage

# バーストカウント減らす
    scoreboard players remove @s[scores={RD.BurstCount=0..}] RD.BurstCount 1
    scoreboard players reset @s[scores={RD.BurstCount=-1}] RD.BurstCount
