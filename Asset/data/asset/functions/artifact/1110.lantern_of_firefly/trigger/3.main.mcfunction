#> asset:artifact/1110.lantern_of_firefly/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.25 1.4
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.2
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.1
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.0
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx/circle1
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 -30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx/circle1

# エフェクトを付与
    data modify storage api: Argument.ID set value 265
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコア初期化
    scoreboard players set @s UU.Tick 0

# schedule開始
    schedule function asset:artifact/1110.lantern_of_firefly/trigger/schedule/loop 1t replace
