#> asset:object/2083.brimstone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2083/init

# スピード設定
    data modify storage asset:context this.Speed set value 3
    data modify storage asset:context this.Range set value 256
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

# 向きを指定プレイヤーへ向ける
    # tellraw @p [{"storage":"asset:context","nbt":"this.target_pos"}]
    execute facing entity @p[tag=5X.BrimstoneTarget] eyes run tp @s ~ ~ ~ ~ ~
