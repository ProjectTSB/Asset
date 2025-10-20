#> asset:object/2080.aurora_missile/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2080/init

# Enhanced:trueならTagを付与
    execute if data storage asset:context this{Enhanced:true} run tag @s add 2080.Enhanced

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 50
# Enhancedタグがあるか否かでMovePerStepを変える
    execute if entity @s[tag=!2080.Enhanced] run data modify storage asset:context this.MovePerStep set value 0.35
    execute if entity @s[tag=2080.Enhanced] run data modify storage asset:context this.MovePerStep set value 0.5

# スーパーメソッド呼び出し
    function asset:object/super.init
