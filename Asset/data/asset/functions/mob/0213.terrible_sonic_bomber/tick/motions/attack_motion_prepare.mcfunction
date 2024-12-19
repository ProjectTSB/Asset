#> asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
   #declare score_holder $attack_start_time
   #declare score_holder $weapon_num
   #declare score_holder $health_per
 
# 攻撃武器選択 HP半分以下なら選択肢変化
function api:mob/get_health_percent
execute store result score $health_per Temporary run data get storage api: Return.HealthPer 100

# 乱数によるスキル選択
data modify storage lib: Args.key set value "5XWeapon"
execute if score $health_per Temporary matches 50.. run data modify storage lib: Args.max set value 3
execute if score $health_per Temporary matches ..49 run data modify storage lib: Args.max set value 4
data modify storage lib: Args.scarcity_history_size set value 2
execute store result score $weapon_num Temporary run function lib:random/with_biased/manual.m with storage lib: Args
scoreboard players add $weapon_num Temporary 1
   #tellraw @a [{"score":{"name":"$health_per","objective":"Temporary"},"color":"blue"}]

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
scoreboard players reset $health_per Temporary
