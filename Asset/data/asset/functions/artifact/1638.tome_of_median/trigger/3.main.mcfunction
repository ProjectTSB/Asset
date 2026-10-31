#> asset:artifact/1638.tome_of_median/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1638.tome_of_median/trigger/2.check_condition

# ダメージを消費前の時点で計算しておく
## 500 / (abs(50 - MPRatio) / 3)
    #500
    scoreboard players set $A1638.Damage Temporary 500

    #MPRatio
    function api:entity/player/get_mp_per
    execute store result score $A1638.MPRatio Temporary run data get storage api: Return.MPPer 100

    #MPRatioがちょうど50±2%でないならabs(50 - MPRatio) / 3を計算して500を除算
    execute unless score $A1638.MPRatio Temporary matches 48..52 run function asset:artifact/1638.tome_of_median/trigger/calc

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    #前方のEnemyを候補に
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] add A1638.Candidate
    #Enemyがいなかったら演出のみ
    execute positioned ^ ^ ^3 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] positioned ~ ~1.5 ~ run function asset:artifact/1638.tome_of_median/trigger/fx
    #Enemyがいたら視点と距離でターゲットを決める
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=A1638.Candidate,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] at @s run function asset:artifact/1638.tome_of_median/trigger/damage

# リセット
    tag @e[type=#lib:living_without_player,tag=A1638.Candidate,distance=..10] remove A1638.Candidate
    scoreboard players reset $A1638.Damage
    scoreboard players reset $A1638.MPRatio
