#> asset:object/1049.lexiel_rod_fireball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1049/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# ちょっと追尾
   execute facing entity @e[type=#lib:living,tag=Enemy,distance=..10,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~


    execute at @s run function asset:object/super.tick
