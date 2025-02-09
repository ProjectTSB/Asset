#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/
#
# 自分の左右に召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

# 召喚その1
    execute facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
# 召喚その2: ハード以上でやる
    execute if predicate api:global_vars/difficulty/min/hard facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
