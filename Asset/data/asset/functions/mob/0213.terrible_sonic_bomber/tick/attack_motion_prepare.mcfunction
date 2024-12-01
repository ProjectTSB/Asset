#> asset:mob/0213.terrible_sonic_bomber/tick/attack_motion_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
   #declare score_holder $attack_start_time
   #declare score_holder $weapon_num

# 攻撃武器選択
#execute store result score $weapon_num Temporary run random value 1..3
scoreboard players set $weapon_num Temporary 1
execute store result storage asset:context this.use_weapon int 1 run scoreboard players get $weapon_num Temporary

# 攻撃開始時間選択
execute store result score $attack_start_time Temporary run time query gametime
execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 20

# 中心座標を向く
execute facing entity @e[tag=5X.Centre,limit=1] eyes rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 武器ごとの処理
execute if score $weapon_num Temporary matches 1 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
execute if score $weapon_num Temporary matches 2 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare
execute if score $weapon_num Temporary matches 3 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/harm_prepare
