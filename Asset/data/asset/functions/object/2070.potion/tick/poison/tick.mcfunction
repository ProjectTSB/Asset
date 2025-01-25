#> asset:object/2070.potion/tick/poison/tick
#
# 毒ポーションの処理
#
# @within function asset:object/2070.potion/tick/

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 毒
    data modify storage api: Argument.ID set value 29
    data modify storage api: Argument merge from storage asset:context this.Poison
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle dust 0 0.4 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    particle dust 0.6 0 1 1.5 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    playsound block.fire.extinguish hostile @a ~ ~ ~ 0.4 2 0

# 消滅
    kill @s[scores={General.Object.Tick=60..}]
