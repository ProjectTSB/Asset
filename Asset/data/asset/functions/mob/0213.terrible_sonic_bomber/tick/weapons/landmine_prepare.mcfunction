#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/landmine_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
    #declare score_holder $attack_start_time

# 攻撃開始と終了時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 10
    execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 11

# 本体の向きを変更
    execute facing entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 旋回アニメーション
    execute on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_back_and_wing_straight/play

# 直線翼になったことを記録
    tag @s add 5X.WingStraight

# 攻撃箇所表示
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:25f}
    data modify storage api: Argument.ID set value 2201
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^12.5 ^ ^12.5 positioned ~ ~0.01 ~ run function api:object/summon

    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:25f}
    data modify storage api: Argument.ID set value 2201
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^-12.5 ^ ^12.5 positioned ~ ~0.01 ~ run function api:object/summon

    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:25f}
    data modify storage api: Argument.ID set value 2201
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^12.5 ^ ^-12.5 positioned ~ ~0.01 ~ run function api:object/summon

    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:25f}
    data modify storage api: Argument.ID set value 2201
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^-12.5 ^ ^-12.5 positioned ~ ~0.01 ~ run function api:object/summon

# ディスペンサーに与える地雷配布地点のリストを作成
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^12.5 ^ ^12.5 run data modify storage asset:context this.Minefield_Pos append from entity @e[type=item_display,scores={ObjectID=2201},distance=..1,limit=1] Pos
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^-12.5 ^ ^12.5 run data modify storage asset:context this.Minefield_Pos append from entity @e[type=item_display,scores={ObjectID=2201},distance=..1,limit=1] Pos
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^12.5 ^ ^-12.5 run data modify storage asset:context this.Minefield_Pos append from entity @e[type=item_display,scores={ObjectID=2201},distance=..1,limit=1] Pos
    execute rotated as @s positioned as @e[type=marker,tag=5X.Centre,distance=..128] positioned ^-12.5 ^ ^-12.5 run data modify storage asset:context this.Minefield_Pos append from entity @e[type=item_display,scores={ObjectID=2201},distance=..1,limit=1] Pos
        #tellraw @a [{"nbt":"this.Minefield_Pos","storage": "asset:context"}]

# 既存の地雷を削除
    execute as @e[type=slime,scores={MobID=436}] run function api:mob/kill 

# reset
    scoreboard players reset $attack_start_time Temporary
