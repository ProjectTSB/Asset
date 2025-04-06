#> asset:mob/1004.tultaria/tick/base_move/break/summon_illusion/
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/break/tick

# 召喚その1
    execute facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/base_move/break/summon_illusion/summon
# 召喚その2: ハード以上でやる
    execute if predicate api:global_vars/difficulty/min/normal facing entity @p[gamemode=!spectator,distance=..128] feet rotated ~ 0 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/base_move/break/summon_illusion/summon
