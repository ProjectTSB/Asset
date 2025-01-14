#> asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
    #declare score_holder $current_gametime_for_attack
    #declare score_holder $attack_start_time
    #declare score_holder $attack_end_time
    #declare score_holder $use_weapon
    #declare score_holder $flare_time

# 現在時間を記録
    execute store result score $current_gametime_for_attack Temporary run time query gametime

# 移動処理
# 中心座標を中心に旋回
    execute unless entity @e[tag=5X.Centre,distance=..53] facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~80 0 run tp @s ~ ~ ~ ~ ~

# 直進
    execute rotated as @s run tp @s ^ ^ ^1.5

# 対空砲付近を飛ぶときはフレアを出す(3tickおき)
    execute store result score $flare_time Temporary run time query gametime
    scoreboard players operation $flare_time Temporary %= $3 Const
    execute if entity @e[tag=5X.Centre,distance=..30] if score $flare_time Temporary matches 0 run particle minecraft:lava ^ ^-1 ^-2 1.5 0 1.5 1 24 force


# 攻撃処理
# 使用武器を取得
    execute store result score $use_weapon Temporary run data get storage asset:context this.use_weapon

# 攻撃開始時刻になったら攻撃開始
    execute store result score $attack_start_time Temporary run data get storage asset:context this.attack_start_time
    execute store result score $attack_end_time Temporary run data get storage asset:context this.attack_end_time

    execute if score $current_gametime_for_attack Temporary = $attack_start_time Temporary if score $current_gametime_for_attack Temporary < $attack_end_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon


# 攻撃終了後の処理
    execute if score $current_gametime_for_attack Temporary >= $attack_end_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/set_next_attack_time
    execute if score $current_gametime_for_attack Temporary = $attack_end_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/escape_after_attack

        #tellraw @a [{"text": "use_weapon"},{"score":{"objective":"Temporary","name":"$use_weapon"}}]
        #tellraw @a [{"text": "attack_start_time"},{"score":{"objective":"Temporary","name":"$use_weapon"}}]

# reset
    scoreboard players reset $current_gametime_for_attack Temporary
    scoreboard players reset $attack_start_time Temporary
    scoreboard players reset $attack_end_time Temporary
    scoreboard players reset $use_weapon Temporary
    scoreboard players reset $flare_time Temporary
