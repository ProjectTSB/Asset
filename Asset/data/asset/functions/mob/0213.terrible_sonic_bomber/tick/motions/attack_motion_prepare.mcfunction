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
    function asset:mob/0213.terrible_sonic_bomber/tick/weapons/select_weapon
        #data modify storage asset:context Action.Selected set value "storm_shadow_cluster"


# 攻撃開始と終了時間指定(デフォルト値)
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 20
    execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 20

# 武器ごとの処理
    execute if data storage asset:context Action{Selected:"storm_shadow"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
    execute if data storage asset:context Action{Selected:"storm_shadow_cluster"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_cluster_prepare
    execute if data storage asset:context Action{Selected:"brimstone"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare
    execute if data storage asset:context Action{Selected:"drone"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone_prepare
    execute if data storage asset:context Action{Selected:"snake_eye"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye_prepare
    execute if data storage asset:context Action{Selected:"gatling"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling_prepare
    execute if data storage asset:context Action{Selected:"landmine"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/landmine_prepare

# reset
    scoreboard players reset $attack_start_time Temporary
    scoreboard players reset $weapon_num Temporary
    scoreboard players reset $health_per Temporary
    data remove storage asset:temp action
