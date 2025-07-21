#> asset:mob/0046.clock_of_despair/tick/skill/11_oclock
#
# 時計レーザーx2 -> 時計レーザーx2
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

#> Val
# @private
    #declare score_holder $LaserDirection
    #declare tag 1A.LaserDirection1
    #declare tag 1A.LaserDirection2
    #declare tag 1A.LaserDirection3
    #declare tag 1A.LaserDirection4
    #declare score_holder $IntervalTime

# 時計レーザーの順序指定
    execute if score @s 1A.LifeTime matches 2205 store result score $LaserDirection Temporary run random value 0..3
    execute if score @s 1A.LifeTime matches 2205 if score $LaserDirection Temporary matches 0 run tag @s add 1A.LaserDirection1
    execute if score @s 1A.LifeTime matches 2205 if score $LaserDirection Temporary matches 1 run tag @s add 1A.LaserDirection2
    execute if score @s 1A.LifeTime matches 2205 if score $LaserDirection Temporary matches 2 run tag @s add 1A.LaserDirection3
    execute if score @s 1A.LifeTime matches 2205 if score $LaserDirection Temporary matches 3 run tag @s add 1A.LaserDirection4
    execute if score @s 1A.LifeTime matches 2205 run scoreboard players reset $LaserDirection Temporary

# 時計レーザー
# + + -> - -
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection1] positioned ~006 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection1] if predicate api:global_vars/difficulty/min/3_blessless positioned ~016 ~6 ~006 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection1] positioned ~-06 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection1] if predicate api:global_vars/difficulty/min/3_blessless positioned ~-16 ~6 ~-06 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
# + - -> - +
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection2] if predicate api:global_vars/difficulty/min/3_blessless positioned ~006 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection2] positioned ~016 ~6 ~-06 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection2] if predicate api:global_vars/difficulty/min/3_blessless positioned ~-06 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection2] positioned ~-16 ~6 ~006 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
# - + -> + -
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection3] positioned ~-06 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection3] if predicate api:global_vars/difficulty/min/3_blessless positioned ~016 ~6 ~006 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection3] positioned ~006 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection3] if predicate api:global_vars/difficulty/min/3_blessless positioned ~-16 ~6 ~-06 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
# - - -> + +
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection4] if predicate api:global_vars/difficulty/min/3_blessless positioned ~-06 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LaserDirection4] positioned ~016 ~6 ~-06 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection4] if predicate api:global_vars/difficulty/min/3_blessless positioned ~006 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LaserDirection4] positioned ~-16 ~6 ~006 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon

# タグ削除
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LaserDirection1
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LaserDirection2
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LaserDirection3
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LaserDirection4

# メイジをさよならする (大爆発させてこんな時間まで倒せてないやつを消し炭にしようかと思ったけど、流石に自重。)
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=187},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=189},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=190},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~

# 爆発演出
    scoreboard players operation $IntervalTime Temporary = @s 1A.LifeTime
    execute if score @s 1A.LifeTime matches 2200..2249 run scoreboard players operation $IntervalTime Temporary %= $5 Const
    execute if score @s 1A.LifeTime matches 2250..2299 run scoreboard players operation $IntervalTime Temporary %= $4 Const
    execute if score @s 1A.LifeTime matches 2300..2360 run scoreboard players operation $IntervalTime Temporary %= $3 Const
    execute if score $IntervalTime Temporary matches 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/blast_vfx
    scoreboard players reset $IntervalTime Temporary

    execute if score @s 1A.LifeTime matches 2345 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2350 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2355 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.0
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.0
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.1
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.1
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.2
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.2
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.3
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.3
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.4
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.4
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.5
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.5
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.6
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.6
