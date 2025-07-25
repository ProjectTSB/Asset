#> asset:mob/0046.clock_of_despair/tick/skill/0_oclock
#
# 揺れ -> 自機狙い雷 -> 自機外し雷
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

#> Val
# @private
#declare tag 1A.Target

# 開幕
    execute if score @s 1A.LifeTime matches 0 run playsound minecraft:block.respawn_anchor.set_spawn hostile @a

# 視界を揺らす
    execute if score @s 1A.LifeTime matches 1 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~6
    execute if score @s 1A.LifeTime matches 2 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-6
    execute if score @s 1A.LifeTime matches 3 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~5
    execute if score @s 1A.LifeTime matches 4 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-5
    execute if score @s 1A.LifeTime matches 5 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~4
    execute if score @s 1A.LifeTime matches 6 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-4
    execute if score @s 1A.LifeTime matches 7 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~3
    execute if score @s 1A.LifeTime matches 8 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-3
    execute if score @s 1A.LifeTime matches 9 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~2
    execute if score @s 1A.LifeTime matches 10 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-2
    execute if score @s 1A.LifeTime matches 11 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~1
    execute if score @s 1A.LifeTime matches 12 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-1
    execute if score @s 1A.LifeTime matches 13 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~0.5
    execute if score @s 1A.LifeTime matches 14 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-0.5


# サンダー召喚
    execute if score @s 1A.LifeTime matches 40 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}

# サンダー召喚(95Tickに攻撃)
    execute if score @s 1A.LifeTime matches 60 run tag @a[distance=..50,sort=random,limit=4] add 1A.Target
    execute if score @s 1A.LifeTime matches 60 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:35}
    execute if score @s 1A.LifeTime matches 65 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:30}
    execute if score @s 1A.LifeTime matches 70 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:25}
    execute if score @s 1A.LifeTime matches 75 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 80 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:15}
    execute if score @s 1A.LifeTime matches 85 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:10}
# tag削除
    execute if score @s 1A.LifeTime matches 85 run tag @a[tag=1A.Target,distance=..100] remove 1A.Target

# サンダー召喚(160Tickに攻撃)
    execute if score @s 1A.LifeTime matches 110 run tag @a[distance=..50,sort=random,limit=4] add 1A.Target
    execute if score @s 1A.LifeTime matches 110 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:50}
    execute if score @s 1A.LifeTime matches 120 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:40}
    execute if score @s 1A.LifeTime matches 130 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:30}
    execute if score @s 1A.LifeTime matches 140 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 150 at @a[tag=1A.Target,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:10}

    execute if score @s 1A.LifeTime matches 150 run tag @a[tag=1A.Target,distance=..100] remove 1A.Target

# サンダー召喚(190Tickに攻撃)
    execute if score @s 1A.LifeTime matches 170 run tag @a[distance=..50,sort=random,limit=4] add 1A.Target
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 000 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 045 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 090 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 135 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 180 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 225 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 270 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 at @a[tag=1A.Target,distance=..100] rotated 315 0 positioned ^ ^ ^4.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 if predicate api:global_vars/difficulty/min/3_blessless at @a[tag=1A.Target,distance=..100] rotated 045 0 positioned ^ ^ ^2.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 if predicate api:global_vars/difficulty/min/3_blessless at @a[tag=1A.Target,distance=..100] rotated 135 0 positioned ^ ^ ^2.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 if predicate api:global_vars/difficulty/min/3_blessless at @a[tag=1A.Target,distance=..100] rotated 225 0 positioned ^ ^ ^2.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
    execute if score @s 1A.LifeTime matches 170 if predicate api:global_vars/difficulty/min/3_blessless at @a[tag=1A.Target,distance=..100] rotated 315 0 positioned ^ ^ ^2.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m {Delay:20}
# tag削除
    execute if score @s 1A.LifeTime matches 170 run tag @a[tag=1A.Target,distance=..100] remove 1A.Target
