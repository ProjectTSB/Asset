#> asset:artifact/0610.call_fish/click/3.1.tick
#
#
#
# @within function
#    asset:artifact/0610.call_fish/click/
#    asset:artifact/0610.call_fish/click/3.1.tick
#    asset:artifact/0610.call_fish/rejoin_process

# スコアを増やす
    scoreboard players add @e[type=cod,tag=GY.Fish] GY.FishCool 1
# スコアを減らす
    scoreboard players remove @e[type=cod,tag=GY.Fish] GY.FishTime 1

# 攻撃をさせる
    execute as @e[type=cod,tag=GY.Fish,scores={GY.FishCool=20}] at @s if entity @e[tag=Enemy,tag=!Uninterferable,distance=..10] run function asset:artifact/0610.call_fish/click/3.2.attack

# スコアを戻す
    scoreboard players set @e[type=cod,tag=GY.Fish,scores={GY.FishCool=20}] GY.FishCool 0

# 殺す
    kill @e[type=cod,tag=GY.Fish,scores={GY.FishTime=0}]

# 再帰処理
    execute if entity @e[type=cod,tag=GY.Fish,limit=1] run schedule function asset:artifact/0610.call_fish/click/3.1.tick 1t replace
