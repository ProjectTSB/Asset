#> asset:artifact/1078.pigeon_blood/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1078.pigeon_blood/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 2 1.1
    playsound ogg:item.trident.throw2 player @a ~ ~ ~ 2 0.8

# 使用回数をカウントする
    scoreboard players add @s TY.Count 1

# 使用回数で斬撃演出を変える
    execute if entity @s[scores={TY.Count=1}] positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/1
    execute if entity @s[scores={TY.Count=2}] positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/2

# 使用回数リセット
    execute if entity @s[scores={TY.Count=2..}] run scoreboard players reset @s TY.Count

# 周囲に共鳴・蒼バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1078.pigeon_blood/trigger/4.search_resonance

# リセット処理部
    tag @s[tag=Resonance] remove Resonance