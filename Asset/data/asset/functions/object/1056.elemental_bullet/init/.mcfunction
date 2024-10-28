#> asset:object/1056.elemental_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1056/init

# 敵の方を向く
    tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] eyes

# スピード設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 40
    data modify storage asset:context this.MovePerStep set value 0.8

# 属性Tag設定
    execute if data storage asset:context this{Element:Fire} run tag @s add 1056.Fire
    execute if data storage asset:context this{Element:Water} run tag @s add 1056.Water
    execute if data storage asset:context this{Element:Thunder} run tag @s add 1056.Thunder

# 継承
    function asset:object/super.init
