#> asset:mob/0046.clock_of_despair/init/
# @within asset:mob/alias/46/init

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["1A.ClockHand","Object","Uninterferable"]}
execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] run tp @e[type=zombie,tag=MobInit,distance=..0.01,limit=1]
scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] 1A.LifeTime -1
