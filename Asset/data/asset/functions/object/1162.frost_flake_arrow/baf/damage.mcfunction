#> asset:object/1162.frost_flake_arrow/baf/damage
#
#
# 飛翔時間1tickにつきダメージが4%上昇、最大40%まで
#
# @within function asset:object/1162.frost_flake_arrow/pre_hit/
#> Private
# @private
    #declare score_holder $14D.multiplier
    #declare score_holder $14D.value

# 倍率を計算する: #14D.multiplier = (Tick × 4 + 100)
    scoreboard players operation $14D.multiplier Temporary = @s General.Object.Tick
    scoreboard players operation $14D.multiplier Temporary *= $4 Const
    scoreboard players operation $14D.multiplier Temporary += $100 Const

# 元のdataの値をスコアボードに取得する (小数が切り捨てられないよう、100倍して取得)
    execute store result score $14D.value Temporary run data get storage asset:context this.Damage 100

# 取得した値に、計算した倍率を掛け算する
    scoreboard players operation $14D.value Temporary *= $14D.multiplier Temporary

# 計算結果をdata(ストレージ)に戻す
# ※取得時に100倍、倍率計算で100倍のスケールになっているため、戻す時に 0.0001 (1万分の1) を掛けて元のスケールに戻します
    execute store result storage asset:context this.Damage double 0.0001 run scoreboard players get $14D.value Temporary
    scoreboard players reset $14D.multiplier Temporary
    scoreboard players reset $14D.value Temporary
