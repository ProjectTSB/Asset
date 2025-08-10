#> asset:object/2087.patriot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2087/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 1024
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

# 向きをボスへ向ける
    #execute facing entity @e[tag=Enemy.Boss,tag=!Uninterferable,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~
