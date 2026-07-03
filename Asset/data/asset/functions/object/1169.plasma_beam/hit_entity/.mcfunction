#> asset:object/1169.plasma_beam/hit_entity/
#
# ヒット処理
#
# @within asset:object/alias/1169/hit_entity

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=random,limit=1] run function asset:object/1169.plasma_beam/hit_entity/damage

# リセット
    scoreboard players reset $UserID

# 消す
    function asset:object/call.m {method:kill}
