#> asset:object/1165.bubble_spreader/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1165/init



# -5..2の範囲でtickを変える
    execute store result score @s General.Object.Tick run random value -5..2

# MovePerStepの値を別フィールドへ保存
# MovePerStepが0にある場合があり、それを復元するため
    data modify storage asset:context this.SavedMPS set from storage asset:context this.MovePerStep

# super.init
    function asset:object/super.init
