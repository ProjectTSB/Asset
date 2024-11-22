#> asset:mob/0372.tutankhamen/tick/skill/laser/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJの開始アニメーション
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_start/play
    execute if entity @s[scores={General.Mob.Tick=11}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_charge/play

# 狙うプレイヤーを決定しフィールドに放り込む
    execute if entity @s[scores={General.Mob.Tick=0}] as @r[distance=..30] run function lib:get_name/
    execute if entity @s[scores={General.Mob.Tick=0}] run data modify storage asset:context this.TargetName set from storage lib: Return.Name

# 警告音
    execute if entity @s[scores={General.Mob.Tick=20..45}] as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound block.note_block.bit hostile @s ~ ~ ~ 0.4 1 1
    execute if entity @s[scores={General.Mob.Tick=55..65}] as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound block.note_block.bit hostile @s ~ ~ ~ 0.4 1 1
    execute if entity @s[scores={General.Mob.Tick=75..85}] as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound block.note_block.bit hostile @s ~ ~ ~ 0.4 1 1

# ターゲットの方を向く
    execute if entity @s[scores={General.Mob.Tick=20..35}] run function asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m with storage asset:context this
    execute if entity @s[scores={General.Mob.Tick=55}] run function asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m with storage asset:context this
    execute if entity @s[scores={General.Mob.Tick=75}] run function asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m with storage asset:context this

# Rotationをフィールドに入れてからdisplayを前方に召喚
    execute if entity @s[scores={General.Mob.Tick=20}] at @s run data modify storage asset:context this.Rotation set from entity @s Rotation
    execute if entity @s[scores={General.Mob.Tick=20}] at @s anchored eyes positioned ^0.2 ^-0.5 ^16 run function asset:mob/0372.tutankhamen/tick/skill/common/summon_laser_display.m with storage asset:context this
    execute if entity @s[scores={General.Mob.Tick=55}] at @s run data modify storage asset:context this.Rotation set from entity @s Rotation
    execute if entity @s[scores={General.Mob.Tick=55}] at @s anchored eyes positioned ^0.2 ^-0.5 ^16 run function asset:mob/0372.tutankhamen/tick/skill/common/summon_laser_display.m with storage asset:context this
    execute if entity @s[scores={General.Mob.Tick=75}] at @s run data modify storage asset:context this.Rotation set from entity @s Rotation
    execute if entity @s[scores={General.Mob.Tick=75}] at @s anchored eyes positioned ^0.2 ^-0.5 ^16 run function asset:mob/0372.tutankhamen/tick/skill/common/summon_laser_display.m with storage asset:context this

# displayを消す
    execute if entity @s[scores={General.Mob.Tick=45}] run kill @e[type=item_display,tag=AC.LaserDisplay,distance=..30]
    execute if entity @s[scores={General.Mob.Tick=65}] run kill @e[type=item_display,tag=AC.LaserDisplay,distance=..30]
    execute if entity @s[scores={General.Mob.Tick=85}] run kill @e[type=item_display,tag=AC.LaserDisplay,distance=..30]

# 発射アニメーション
    execute if entity @s[scores={General.Mob.Tick=45}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_shot/play
    execute if entity @s[scores={General.Mob.Tick=65}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_shot/play
    execute if entity @s[scores={General.Mob.Tick=85}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_shot/play

# レーザー発射
    execute if entity @s[scores={General.Mob.Tick=45}] at @s anchored eyes positioned ^0.2 ^-0.5 ^1 run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot
    execute if entity @s[scores={General.Mob.Tick=65}] at @s anchored eyes positioned ^0.2 ^-0.5 ^1 run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot
    execute if entity @s[scores={General.Mob.Tick=85}] at @s anchored eyes positioned ^0.2 ^-0.5 ^1 run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot

# ビーム終了アニメ
    execute if entity @s[scores={General.Mob.Tick=105}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_end/play

# リセット
    execute if entity @s[scores={General.Mob.Tick=120..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
