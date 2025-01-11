#> asset:object/2084.snake_eye/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2084/init

# スピード設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 256
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

# 向きを発射母機と合わせる
    # tellraw @p [{"storage":"asset:context","nbt":"this.target_pos"}]
    execute rotated as @e[tag=Enemy.Boss,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 80
