#> asset:object/1011.456_dice/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1011/init

# 汎用スコア初期化
    scoreboard players set @s General.Object.Tick 0

# 攻撃回数をNumと同値に初期化
    data modify storage asset:context this.AttackCount set from storage asset:context this.Num
