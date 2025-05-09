#> asset:artifact/0374.thunder_spell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0374.thunder_spell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^ ^1 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^1.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3.5 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^4 run particle dust 1 1 0 1 ~ ~1 ~ 0.1 0 0.1 0 5
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.4 2

# 敵が周囲にいるなら方向転換
    execute if entity @e[type=#lib:living,type=!player,tag=Enemy,distance=..8] run function asset:artifact/0374.thunder_spell/trigger/turn_to_enemy

# リセット
    tag @s remove AE.Check
    tag @e[type=#lib:living,type=!player,tag=Target,distance=..8] remove Target
    tag @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..8] remove NearestTarget
    scoreboard players reset $RecursiveCount Temporary
