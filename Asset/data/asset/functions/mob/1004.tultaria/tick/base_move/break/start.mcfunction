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

# エフェクト消去
    data modify storage api: Argument.ID set value 621
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 被ダメージアップエフェクト付与
    data modify storage api: Argument.ID set value 107
    data modify storage api: Argument.Stack set value 10
    data modify storage api: Argument.Duration set value 240
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# お星さまを削除
    kill @e[type=item_display,scores={ObjectID=2030},distance=..128]

# タグリセット
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/break/tween {to_frame:0,duration:1}

# タグ付与
    tag @s add RW.Break
    tag @s add RW.InAction
    tag @s remove RW.Shield

# スコアセット
    scoreboard players set @s General.Mob.Tick -1

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:air
