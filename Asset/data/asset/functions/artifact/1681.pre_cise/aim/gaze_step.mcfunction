#> asset:artifact/1681.pre_cise/aim/gaze_step
#
# 視線方向へ0.5mずつ20mまで進み、壁と最初に当たった敵で止まる (fire/bulletと同じ当たり判定)
# 当たった敵のMobUUIDを$MobUUIDに保存する
#
# @input
#   as player at 目の位置 (視線方向を向く)
#   score $Steps Temporary : 進んだ回数 (呼出前に-1)
#   score $Landing Temporary : 止まったら1 (呼出前に0)
#   score $MobUUID Temporary : 当たった敵のMobUUID (呼出前に-1)
# @within function
#   asset:artifact/1681.pre_cise/aim/gaze
#   asset:artifact/1681.pre_cise/aim/gaze_step

# 進んだ回数を数える
    scoreboard players add $Steps Temporary 1

# 敵に当たったら止まり、そのMobUUIDを得る (MobUUIDを持たない敵では保存しない)
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run scoreboard players set $Landing Temporary 1
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] if score @s MobUUID matches 0.. run scoreboard players operation $MobUUID Temporary = @s MobUUID

# 先が壁なら止まる
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run scoreboard players set $Landing Temporary 1

# 止まらず20m (40回) 以内なら進む
    execute if score $Landing Temporary matches 0 if score $Steps Temporary matches ..39 positioned ^ ^ ^0.5 run function asset:artifact/1681.pre_cise/aim/gaze_step
