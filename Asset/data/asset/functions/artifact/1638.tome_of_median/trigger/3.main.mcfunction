#> asset:artifact/1638.tome_of_median/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1638.tome_of_median/trigger/2.check_condition

#> Private
# @within function asset:artifact/1638.tome_of_median/trigger/**
    #declare score_holder $Damage
    #declare score_holder $MPRatio
    #declare score_holder $MPMax
# @private
    #declare tag Candidate

# ダメージを消費前の時点で計算しておく
## 500 / (abs(50 - MPRatio) / 3)
    #500
    scoreboard players set $Damage Temporary 500

    #MPRatio
    function api:mp/get_current
    execute store result score $MPRatio Temporary run data get storage api: Return.CurrentMP 1000
    function api:mp/get_max
    execute store result score $MPMax Temporary run data get storage api: Return.MaxMP 10
    scoreboard players operation $MPRatio Temporary /= $MPMax Temporary

    #MPRatioがちょうど50±2%でないならabs(50 - MPRatio) / 2を計算して500を除算
    execute unless score $MPRatio Temporary matches 48..52 run function asset:artifact/1638.tome_of_median/trigger/calc

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    #前方のEnemyを候補に
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] add Candidate
    #Enemyがいなかったら演出のみ
    execute positioned ^ ^ ^3 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] positioned ~ ~1.5 ~ run function asset:artifact/1638.tome_of_median/trigger/fx
    #Enemyがいたら視点と距離でターゲットを決める
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=Candidate,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] at @s run function asset:artifact/1638.tome_of_median/trigger/damage

# リセット
    tag @e[type=#lib:living_without_player,tag=Candidate,distance=..10] remove Candidate
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MPRatio Temporary
    scoreboard players reset $MPMax Temporary
