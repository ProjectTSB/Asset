#> asset:artifact/1079.allochromatic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1079.allochromatic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 自身に共鳴・蒼バフを付与
    data modify storage api: Argument.ID set value 229
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 周囲に共鳴・紅バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1079.allochromatic/trigger/4.search_resonance

# 反動
# 共鳴時に反動軽減
    execute if entity @s[tag=!Resonance] run tp @s ~ ~ ~ ~ ~-4.5
    execute if entity @s[tag=Resonance] run tp @s ~ ~ ~ ~ ~-1.5

# デバッグ用共鳴Tag
    #tag @s add Resonance

# 発射
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/trigger/5.shot

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1080
    #execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.Slot set value "mainhand"
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# リセット
    tag @s[tag=Resonance] remove Resonance
