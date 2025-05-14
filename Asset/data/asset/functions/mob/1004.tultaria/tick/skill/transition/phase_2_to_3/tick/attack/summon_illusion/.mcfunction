#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/
#
# 自分の左右に召喚、ついでにバフを得る
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

# 召喚その1
    execute facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
# 召喚その2: ハード以上でやる
    execute if predicate api:global_vars/difficulty/min/2_hard facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon

# エフェクト付与
    data modify storage api: Argument.ID set value 621
    data modify storage api: Argument.Stack set value 1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
