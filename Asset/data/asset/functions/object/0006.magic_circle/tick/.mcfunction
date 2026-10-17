#> asset:object/0006.magic_circle/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/6/tick

# 次の回転または消滅までの待ち時間を進める
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval

# 回転させる
    execute unless data storage asset:context this{SpinCount:0} if data storage asset:context this{SpinInterval:0} run function asset:object/0006.magic_circle/tick/spin/

# 縮小が完了したら消滅させる
    execute if data storage asset:context this{SpinCount:0,SpinInterval:0} run function asset:object/0006.magic_circle/tick/kill
