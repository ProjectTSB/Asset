#> asset:object/2088.patriot_launcher/tick/tick_broken
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/

#> prv
# @private
    #declare score_holder $RepairValue
    #declare score_holder $RepairTime
    #declare score_holder $RepairPlayer

# 修理値を決定
execute store result score $RepairPlayer Temporary if entity @a[predicate=lib:is_sneaking,distance=..3]
execute if score $RepairPlayer Temporary matches 0 run scoreboard players set $RepairValue Temporary 128
execute if score $RepairPlayer Temporary matches 1 run scoreboard players set $RepairValue Temporary 256
execute if score $RepairPlayer Temporary matches 2 run scoreboard players set $RepairValue Temporary 320
execute if score $RepairPlayer Temporary matches 3 run scoreboard players set $RepairValue Temporary 352
execute if score $RepairPlayer Temporary matches 4.. run scoreboard players set $RepairValue Temporary 368

# RepairPlayerがいるならパーティクル
execute if score $RepairPlayer Temporary matches 1.. run particle happy_villager ~ ~2 ~ 1 1 1 1 10

# 修理時間減らす
execute store result score $RepairTime Temporary run data get storage asset:context this.RepairTime
execute store result storage asset:context this.RepairTime int 1 run scoreboard players operation $RepairTime Temporary -= $RepairValue Temporary

# ミサイル命中時の修理時間減速
execute if entity @s[tag=PatriotLauncher.HitMissile] store result storage asset:context this.RepairTime int 1 run scoreboard players add $RepairTime Temporary 10000
execute if score $RepairTime Temporary matches 51201.. run data modify storage asset:context this.RepairTime set value 51200
tag @s remove PatriotLauncher.HitMissile
    #tellraw @a [{"text":"repair time "},{"score":{"objective":"Temporary","name":"$RepairTime"}}]
    #tellraw @a [{"text":"repair value "},{"score":{"objective":"Temporary","name":"$RepairValue"}}]

# 修理時間0以下になったら修理完了
execute if score $RepairTime Temporary matches ..0 run data modify storage asset:context this.Durability set value 10
execute if score $RepairTime Temporary matches ..0 run data modify storage asset:context this.RepairTime set value 0
execute if score $RepairTime Temporary matches ..0 run data modify storage asset:context this.IsBroken set value 0b
execute if score $RepairTime Temporary matches ..0 run data modify storage asset:context this.IsActive set value 1b
execute if score $RepairTime Temporary matches ..0 run data modify storage asset:context this.MissileCooltime set value 199
execute if score $RepairTime Temporary matches ..0 on passengers run data modify entity @s block_state.Name set value "minecraft:white_concrete"
execute if score $RepairTime Temporary matches ..0 on passengers if entity @s[type=text_display] run data modify entity @s text set value '{"color":"#ffffff","text":"対空砲"}'

# reset
scoreboard players reset $RepairValue Temporary
scoreboard players reset $RepairTime Temporary
scoreboard players reset $RepairPlayer Temporary

#プレイヤーが修理中の場合修理値をn+m*p増加
#修理値ｇはmaxになったら修理状態へ戻す
