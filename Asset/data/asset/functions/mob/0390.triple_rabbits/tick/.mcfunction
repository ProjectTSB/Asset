#> asset:mob/0390.triple_rabbits/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/390/tick

#> private
# @private
#declare score_holder $IntervalTime

# タイマー加算
    scoreboard players add @s General.Mob.Tick 1

# アキシャ to エクアル
    execute if score @s General.Mob.Tick matches 150 if entity @s[tag=AU.AxiaDeath] run function asset:mob/0390.triple_rabbits/ai/general/axia_to_ecual

# エクアル to ラビリア
    execute if score @s General.Mob.Tick matches 350 if entity @s[tag=AU.EcualDeath] run function asset:mob/0390.triple_rabbits/ai/general/ecual_to_labyria

# ラビリア to Death
    execute if score @s General.Mob.Tick matches 510 if entity @s[tag=AU.LabyriaDeath] run function api:mob/kill

# ズル対策
    scoreboard players operation $IntervalTime Temporary = @s General.Mob.Tick
    scoreboard players operation $IntervalTime Temporary %= $40 Const
    execute if score $IntervalTime Temporary matches 0 run function asset:mob/0390.triple_rabbits/ai/general/break_block
    execute if score $IntervalTime Temporary matches 0 positioned ~-15 ~3.2 ~-15 at @a[dx=29,dy=25,dz=29] positioned ~ ~1 ~ run function asset:mob/0390.triple_rabbits/ai/general/summon_bullet
    scoreboard players reset $IntervalTime Temporary

# 戦闘中プレイヤーを引き寄せる
    tag @s add AU.Target
    execute at @s as @a[distance=25..30] at @s facing entity @e[type=slime,tag=AU.Target,distance=..100,limit=1] eyes run tp @s ^ ^ ^0.4
    execute at @s as @a[distance=30..40] at @s facing entity @e[type=slime,tag=AU.Target,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.0
    execute at @s as @a[distance=40..55] at @s facing entity @e[type=slime,tag=AU.Target,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.5
    execute at @s as @a[distance=55..100] at @s facing entity @e[type=slime,tag=AU.Target,distance=..100,limit=1] eyes positioned as @e[type=slime,tag=AU.Target,distance=..100,limit=1] rotated ~ 0 run tp @s ^ ^ ^
    execute at @s positioned ~-100 ~-100 ~-100 as @a[dx=199,dy=98,dz=199] at @s facing entity @e[type=slime,tag=AU.Target,distance=..100,limit=1] eyes run tp @s ^ ^ ^2
    tag @s remove AU.Target
