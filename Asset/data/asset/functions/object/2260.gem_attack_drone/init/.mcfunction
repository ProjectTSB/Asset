#> asset:object/2260.gem_attack_drone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2260/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# ID割り当て
    execute store result score @s CO.ObjectId run data get storage asset:context this.ObjectId

# モデル召喚
    function asset:object/2260.gem_attack_drone/init/animated_java

# 仮指定
    scoreboard players set @s 2260.IdleTime 80

# IdleTime

# ターゲット有無
    execute if data storage asset:context this{IsTarget:true} run tag @s add 2260.IsTarget

# タイマー計算
    execute store result score @s 2260.PredictionTime run scoreboard players get @s 2260.IdleTime
    scoreboard players remove @s 2260.PredictionTime 30

# 追従用設定
    execute if entity @s[tag=2260.IsTarget] store result storage asset:context this.TargetPlayerId int 1 run scoreboard players get @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=1] UserID
