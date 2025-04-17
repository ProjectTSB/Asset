#> asset:effect/0324.scripture_gambling/end/success
#
#
#
# @within function asset:effect/0324.scripture_gambling/end/

# 演出
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 15 run function asset:effect/0324.scripture_gambling/end/vfx
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 -15 run function asset:effect/0324.scripture_gambling/end/vfx
    playsound ogg:block.amethyst.resonate1 player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5

# 体力回復
    data modify storage api: Argument.Heal set from storage asset:context this.Heal
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# デバフを1つ解除(解除Lv2)
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.ClearCount set value 1
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
