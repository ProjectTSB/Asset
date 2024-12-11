#> asset:mob/0213.terrible_sonic_bomber/tick/attack_motion_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
   #declare score_holder $attack_start_time
   #declare score_holder $weapon_num
   #declare score_holder $health
 
# 攻撃武器選択 HP半分以下なら選択肢変化
function api:mob/get_health
execute store result score $health Temporary run data get storage api: Return.Health 1

execute if score $health Temporary matches 10000.. store result score $weapon_num Temporary run random value 1..3
execute if score $health Temporary matches ..9999 store result score $weapon_num Temporary run random value 1..4
#scoreboard players set $weapon_num Temporary 4
execute store result storage asset:context this.use_weapon int 1 run scoreboard players get $weapon_num Temporary



# 攻撃開始時間選択
execute store result score $attack_start_time Temporary run time query gametime
execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 20

# 攻撃内容に応じて向きを変える
execute if score $weapon_num Temporary matches 1..2 facing entity @e[tag=5X.Centre,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score $weapon_num Temporary matches 4 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 武器ごとの処理
execute if score $weapon_num Temporary matches 1 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
execute if score $weapon_num Temporary matches 2 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare
execute if score $weapon_num Temporary matches 3 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone_prepare
execute if score $weapon_num Temporary matches 4 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye_prepare

# reset
scoreboard players reset $attack_start_time Temporary
scoreboard players reset $weapon_num Temporary
scoreboard players reset $health Temporary
