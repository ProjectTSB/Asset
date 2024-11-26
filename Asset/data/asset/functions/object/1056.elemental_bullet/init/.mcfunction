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

# debug : 属性が未設定の場合ログを出す
    execute unless data storage asset:context this.Element run say "属性が未設定です"

# 継承
    function asset:object/super.init
