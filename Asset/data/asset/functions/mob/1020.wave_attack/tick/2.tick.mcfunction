#> asset:mob/1020.wave_attack/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1020.wave_attack/tick/1.trigger

# Tick加算
    scoreboard players add @s SC.Tick 1

# 前進
    function asset:mob/1020.wave_attack/tick/move

# ある程度進んだらキル
    kill @s[scores={SC.Tick=100..}]

# 攻撃判定
    tag @s add SC.EntityTemp
    tag @a add SC.PlayerTemp

# 判定部分
    execute positioned ~-5 ~-0.5 ~-5 run tag @a[tag=SC.PlayerTemp,dx=10,dy=0,dz=10] remove SC.PlayerTemp
    execute positioned ^ ^ ^0.9 as @a[tag=SC.PlayerTemp] facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as @e[type=marker,tag=SC.EntityTemp,distance=..30,limit=1] rotated ~ 0 positioned ^ ^ ^4 run tag @s[distance=5..] remove SC.PlayerTemp
    execute positioned ^ ^ ^-0.9 as @a[tag=SC.PlayerTemp] facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as @e[type=marker,tag=SC.EntityTemp,distance=..30,limit=1] rotated ~ 0 positioned ^ ^ ^-4 run tag @s[distance=5..] remove SC.PlayerTemp
    execute positioned ^5.4 ^ ^ as @a[tag=SC.PlayerTemp] facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as @e[type=marker,tag=SC.EntityTemp,distance=..30,limit=1] rotated ~ 0 positioned ^4 ^ ^ run tag @s[distance=5..] remove SC.PlayerTemp
    execute positioned ^-5.4 ^ ^ as @a[tag=SC.PlayerTemp] facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as @e[type=marker,tag=SC.EntityTemp,distance=..30,limit=1] rotated ~ 0 positioned ^-4 ^ ^ run tag @s[distance=5..] remove SC.PlayerTemp

# SC.PlayerTempに何か実行
    tag @a remove SC.PlayerTemp
    tag @s remove SC.EntityTemp