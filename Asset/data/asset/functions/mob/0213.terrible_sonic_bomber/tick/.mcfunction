#> asset:mob/0213.terrible_sonic_bomber/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/213/tick

#> prv
# @private
    #declare score_holder $current_gametime
    #declare score_holder $initial_motion_end_time
    #declare score_holder $next_attack_time

# 現在時間を記録
    execute store result score $current_gametime Temporary run time query gametime

# 初期モーション終了時間前の場合
#     上へゆっくり昇っていく
    execute store result score $initial_motion_end_time Temporary run data get storage asset:context this.initial_motion_end_time 
    execute if score $initial_motion_end_time Temporary > $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/initial_motion


# 初期モーション終了時間ぴったり
#     行動開始処理
    execute if score $initial_motion_end_time Temporary = $current_gametime Temporary store result score $next_attack_time Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/start_action

# それ以降
    execute if entity @e[tag=5X.StartAction] store result score $next_attack_time Temporary run data get storage asset:context this.next_attack_time

# 巡行移動モーション
    execute if entity @e[tag=5X.StartAction] if score $next_attack_time Temporary >= $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/cruise_motion

# 攻撃モーション準備
    execute if entity @e[tag=5X.StartAction] if score $next_attack_time Temporary = $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

# 攻撃モーション実行
    execute if entity @e[tag=5X.StartAction] if score $next_attack_time Temporary < $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

   #tellraw @a [{"score":{"objective":"Temporary","name":"$next_attack_time"}}]

    #execute if entity @s[tag=5X.WingStraight] run say straight

# reset
    scoreboard players reset $initial_motion_end_time Temporary
    scoreboard players reset $current_gametime Temporary
    scoreboard players reset $next_attack_time Temporary
