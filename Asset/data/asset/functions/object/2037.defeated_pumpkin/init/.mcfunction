#> asset:object/2037.defeated_pumpkin/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2037/init

# 最初だけついているTag
    tag @s add 2037.FirstLevitation

#scoreboard players set @s General.Object.Tick 60

# 確率で左回転か右回転を決定
    execute if predicate lib:random_pass_per/50 run tag @s add 2037.LeftRotate

# スピード関連の設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 9999
    data modify storage asset:context this.MovePerStep set value 0.1

# 継承
    function asset:object/super.init
