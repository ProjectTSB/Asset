#> asset:object/1162.frost_flake_arrow/baf/damage
#
#
#
# @within function asset:object/1162.frost_flake_arrow/pre_hit/

# 飛翔時間1tickにつきダメージが4%上昇、最大40%まで
# 1. 計算用の固定数値を準備する(4と100)
    scoreboard players set $4 Temporary 4
    scoreboard players set $100 Temporary 100

# 2. 倍率を計算する: #multiplier = (Tick × 4 + 100)
    scoreboard players operation $multiplier Temporary = @s General.Object.Tick
    scoreboard players operation $multiplier Temporary *= $4 Temporary
    scoreboard players operation $multiplier Temporary += $100 Temporary

# 3. 元のdataの値をスコアボードに取得する (小数が切り捨てられないよう、100倍して取得)
    execute store result score $value Temporary run data get storage asset:context this.Damage 100

# 4. 取得した値に、計算した倍率を掛け算する
    scoreboard players operation $value Temporary *= $multiplier Temporary

# 5. 計算結果をdata(ストレージ)に戻す
# ※取得時に100倍、倍率計算で100倍のスケールになっているため、戻す時に 0.0001 (1万分の1) を掛けて元のスケールに戻します
    execute store result storage asset:context this.Damage double 0.0001 run scoreboard players get $value Temporary
    scoreboard players reset * Temporary 
