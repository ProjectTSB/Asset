#> asset:object/2070.potion/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2070/init

# デバッグ用:Poisonなら消滅
    #execute if data storage asset:context this{Element:Poison} run kill @s

# スピード設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 80
    data modify storage asset:context this.MovePerStep set value 0.8

# スーパーメソッド呼び出し
    function asset:object/super.init
