#> asset:object/1061.azure_jelly/tick/turn/chase_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# 最寄りの敵のy座標が近いかを判定
    execute positioned ~-14 ~ ~-14 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=27,dy=0.0,dz=27,limit=1] run data modify storage asset:temp 1061.Success set value true

# 近いならrotated ~ 0で敵の方を向く
    execute if data storage asset:temp 1061{Success:true} facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..40] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 近くなければそのままfacingする
    execute unless data storage asset:temp 1061{Success:true} facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..40] feet run tp @s ~ ~ ~ ~ ~

# リセット
    data remove storage asset:temp 1061

# 敵との距離に応じて速度倍率を設定する
    function asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/enemy
