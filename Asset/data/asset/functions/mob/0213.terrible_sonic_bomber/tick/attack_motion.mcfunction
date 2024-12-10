#> asset:mob/0213.terrible_sonic_bomber/tick/attack_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
   #declare score_holder $current_gametime
   #declare score_holder $attack_start_time

# 現在時間を記録
execute store result score $current_gametime Temporary run time query gametime

# 中心座標を中心に旋回
execute unless entity @e[tag=5X.Centre,distance=..95] facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~80 0 run tp @s ~ ~ ~ ~ ~

# 直進
tp @s ^ ^ ^3

# 攻撃開始時刻になったら攻撃開始
execute store result score $attack_start_time Temporary run data get storage asset:context this.attack_start_time

execute if score $current_gametime Temporary = $attack_start_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/use_weapon
execute if score $current_gametime Temporary = $attack_start_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/set_next_attack_time

# 攻撃終了後の離脱
execute if score $current_gametime Temporary = $attack_start_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/escape_after_attack
