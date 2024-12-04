#> asset:artifact/1110.lantern_of_firefly/attack/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1110/attack/

# 演出
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.25 1.4
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.2
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.1
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.0
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 30 run function asset:artifact/1110.lantern_of_firefly/attack/vfx/circle1
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 -30 run function asset:artifact/1110.lantern_of_firefly/attack/vfx/circle1

# エフェクトを付与
    data modify storage api: Argument.ID set value 265
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコア初期化
    scoreboard players set @s UU.Tick 0

# schedule開始
    schedule function asset:artifact/1110.lantern_of_firefly/attack/schedule/loop 1t replace
