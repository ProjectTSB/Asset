#> asset:mob/0372.tutankhamen/tick/skill/dash_slash/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash/tween {to_frame: 0, duration: 5}
    execute if entity @s[scores={General.Mob.Tick=1001}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash_slash/tween {to_frame: 0, duration: 5}

# プレイヤーの方へ誘導する
    execute if entity @s[scores={General.Mob.Tick=..99}] facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.4 ~ ~
    execute if entity @s[scores={General.Mob.Tick=..99}] at @s run tp @e[type=item_display,tag=AC.AJLink,distance=..1,sort=nearest,limit=1] ~ ~ ~ ~ ~

# プレイヤーが近くに来たらスコアを変える
    execute if entity @s[scores={General.Mob.Tick=..999}] at @s if entity @p[gamemode=!spectator,distance=..5] run scoreboard players set @s General.Mob.Tick 1000

# 斬撃アニメーション

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=100..999}] run function asset:mob/0372.tutankhamen/tick/skill/reset
    execute if entity @s[scores={General.Mob.Tick=1100..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
