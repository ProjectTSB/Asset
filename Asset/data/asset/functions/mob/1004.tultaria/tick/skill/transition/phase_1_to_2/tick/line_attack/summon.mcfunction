#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/line_attack/summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# ライン攻撃
    execute positioned ^ ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^5 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^-5 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^10 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^-10 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^15 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
    execute positioned ^-15 ^ ^ at @e[type=item_display,scores={ObjectID=2026},distance=..128,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/platform_attack/red
