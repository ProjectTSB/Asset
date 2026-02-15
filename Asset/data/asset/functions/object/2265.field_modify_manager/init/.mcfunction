#> asset:object/2265.field_modify_manager/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2265/init
# @private
    #declare score_holder $Temp.Count

# 攻撃回数決定
    execute store result score @s 2265.AttackCount store result score $Temp.Count 2265.AttackCount run data get storage asset:context this.AttackCount

# Progressバーの最大値を決定
    scoreboard players set @s 2265.Progress.Current 0
    scoreboard players set @s 2265.Progress.Max 200

# 攻撃対象決定
    function asset:object/2265.field_modify_manager/init/decide_color

# 終了
    scoreboard players reset $Temp.Count
