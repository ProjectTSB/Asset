#> asset:effect/0347.snowball_canon/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0347.snowball_canon/_/re-given

#> Private
# @private
    #declare score_holder $Bullet
    #declare score_holder $MaxBullet

# フィールド引継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField

# 弾数が最大でなければ弾数を1増やす
    execute store result score $Bullet Temporary run data get storage asset:context this.Bullet
    execute store result score $MaxBullet Temporary run data get storage asset:context this.MaxBullet
    execute if score $Bullet Temporary <= $MaxBullet Temporary store result storage asset:context this.Bullet int 1 run scoreboard players add $Bullet Temporary 1

# リセット
    scoreboard players reset $Bullet Temporary
    scoreboard players reset $MaxBullet Temporary
