#> asset:object/2083.brimstone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2083/init

# スピード設定
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage asset:context this.Speed set value 3
    execute unless predicate api:global_vars/difficulty/min/3_blessless run data modify storage asset:context this.Speed set value 2.5
    data modify storage asset:context this.Range set value 256
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

# 向きを指定プレイヤーへ向ける
    # tellraw @p [{"storage":"asset:context","nbt":"this.target_pos"}]

    function asset:object/2083.brimstone/turn with storage asset:context this
    #execute facing entity @p[gamemode=!spectator,tag=5X.BrimstoneTarget] eyes run tp @s ~ ~ ~ ~ ~
