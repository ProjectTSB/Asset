#> asset:artifact/0374.thunder_spell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0374.thunder_spell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target
    #declare tag NearestTarget

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

# ターゲット選定 使用者の前方にいる かつ 最も近い敵
    execute positioned ^ ^ ^4 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4] add Target
    tag @e[type=#lib:living,type=!player,tag=Target,distance=..8,sort=nearest,limit=1] add NearestTarget

# 最も近い敵を狙って方向転換
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 if entity @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..4] facing entity @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..4,sort=nearest,limit=1] eyes run function asset:artifact/0374.thunder_spell/trigger/line

# リセット
    tag @s remove AE.Check
    tag @e[type=#lib:living,type=!player,tag=Target,distance=..8] remove Target
    tag @e[type=#lib:living,type=!player,tag=NearestTarget,distance=..8] remove NearestTarget
    scoreboard players reset $RecursiveCount Temporary
