#> asset:object/1056.elemental_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1056/init

# 敵の方を向く
    tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1] eyes

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 40
    data modify storage asset:context this.MovePerStep set value 0.8

# 継承
    function asset:object/super.init
