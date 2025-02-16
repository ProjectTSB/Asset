#> asset:mob/1004.tultaria/tick/base_move/break/start
#
# シールドが割れてブレイク状態に移行
#
# @within function asset:mob/1004.tultaria/tick/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 0.6
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 1.7

# 防御ダウン
#    data modify storage api: Argument.ID set value 125
#    data modify storage api: Argument.Stack set value 20
#    data modify storage api: Argument.Duration set value
#    function api:entity/mob/effect/give
#    function api:entity/mob/effect/reset

# タグリセット
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# タグ付与
    tag @s add RW.Break
    tag @s add RW.InAction
    tag @s remove RW.Shield

# スコアセット
    scoreboard players set @s General.Mob.Tick -1
