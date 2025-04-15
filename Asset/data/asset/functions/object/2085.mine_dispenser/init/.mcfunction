#> asset:object/2085.mine_dispenser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2085/init

# スピード設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 256
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

        #tellraw @a [{"nbt":"this.Minefield_Pos","storage": "asset:context"}]
