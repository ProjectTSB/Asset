#> asset:object/2082.storm_shadow/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2082/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 7
    data modify storage asset:context this.Range set value 1024
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init

# 向きを指定座標へ向ける
    # tellraw @p [{"storage":"asset:context","nbt":"this.target_pos"}]

    #data modify storage asset:temp args.x set from storage asset:context this.target_pos[0]
    #data modify storage asset:temp args.y set from storage asset:context this.target_pos[1]
    #data modify storage asset:temp args.z set from storage asset:context this.target_pos[2]
    #function asset:object/2082.storm_shadow/init/facing_target_pos.m with storage asset:temp args

    #data remove storage asset:temp args
