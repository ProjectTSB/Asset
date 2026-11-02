#> asset:object/1192.satelite_drop/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1192/hit_entity

# ダメージを与えてkill
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=random,limit=1] run function asset:object/1192.satelite_drop/hit_entity/damage
    function asset:object/call.m {method:kill}
