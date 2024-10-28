#> asset:mob/0372.tutankhamen/tick/skill/laser/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

#


    execute as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound block.note_block.bit hostile @s ~ ~ ~ 0.4 1 1

# displayを前方に召喚
    execute if entity @s[scores={General.Mob.Tick=20}] anchored eyes positioned ^-0.35 ^-0.5 ^8 run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["AC.LaserDisplay"],item:{id:"cyan_stained_glass_pane",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,250f]}}

# プレイヤーの方を向く
    #tp @s ~ ~ ~ facing entity @p eyes
    execute anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# displayをプレイヤーの方へ向ける
    execute if entity @s[scores={General.Mob.Tick=20..100}] at @s anchored eyes positioned ^-0.35 ^-0.5 ^8 run tp @e[type=item_display,tag=AC.LaserDisplay,distance=..30,limit=1] ~ ~ ~ ~ ~
    #execute if entity @s[scores={General.Mob.Tick=20..100}] run data modify entity @e[type=item_display,tag=AC.LaserDisplay,distance=..30,limit=1] Rotation set from entity @s Rotation

# displayを消す
    execute if entity @s[scores={General.Mob.Tick=100}] run kill @e[type=item_display,tag=AC.LaserDisplay,distance=..30]

# レーザー発射
    execute if entity @s[scores={General.Mob.Tick=100}] at @s anchored eyes positioned ^-0.35 ^-0.5 ^1 run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot

# リセット
    execute if entity @s[scores={General.Mob.Tick=100..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
