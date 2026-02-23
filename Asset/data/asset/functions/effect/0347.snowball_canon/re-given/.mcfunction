#> asset:effect/0347.snowball_canon/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0347.snowball_canon/_/re-given

#> Private
# @private
    #declare score_holder $Bullet
    #declare score_holder $AddBullet
    #declare score_holder $MaxBullet

# フィールド引継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField

# そもそも: 現時点でフルチャージ済みならreturn
    execute if data storage asset:context this{IsFullCharge:true} run return fail

# 各数値取得
    execute store result score $Bullet Temporary run data get storage asset:context this.Bullet
    execute store result score $AddBullet Temporary run data get storage asset:context this.AddBullet
    execute store result score $MaxBullet Temporary run data get storage asset:context this.MaxBullet

# 最大数は超えないように弾数を増やす
    scoreboard players operation $Bullet Temporary += $AddBullet Temporary
    execute store result storage asset:context this.Bullet int 1 run scoreboard players operation $Bullet Temporary < $MaxBullet Temporary

# フルチャージしたならその判定を保存
    execute if score $Bullet Temporary = $MaxBullet Temporary run data modify storage asset:context this.IsFullCharge set value true

# リセット
    scoreboard players reset $Bullet Temporary
    scoreboard players reset $AddBullet Temporary
    scoreboard players reset $MaxBullet Temporary
