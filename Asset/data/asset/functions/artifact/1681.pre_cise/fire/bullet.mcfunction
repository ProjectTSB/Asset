#> asset:artifact/1681.pre_cise/fire/bullet
#
# 0.5mずつ進む再帰する弾 壁と最初に当たった敵で止まる
#
# @input
#   as big_precise at 弾の現在位置 (発射する向きを向く)
#   score $Steps Temporary : 進んだ回数 (呼出前に-1)
# @within function
#   asset:artifact/1681.pre_cise/fire/bullet
#   asset:artifact/1681.pre_cise/fire/launch

# 進んだ回数を数える
    scoreboard players add $Steps Temporary 1

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add PreCise.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add PreCise.Landing

# 着弾演出
    execute if entity @s[tag=PreCise.Landing] run playsound entity.lightning_bolt.impact player @a[distance=..16] ~ ~ ~ 0.3 1.8
    execute if entity @s[tag=PreCise.Landing] run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.3 8

# 着弾
    execute if entity @s[tag=PreCise.Landing] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] at @s run function asset:artifact/1681.pre_cise/fire/damage

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!PreCise.Landing,distance=..20] run function asset:artifact/1681.pre_cise/fire/bullet
