#> asset:object/0006.magic_circle/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/6/init

# 本体と裏面に同じ表示を設定する
    function asset:object/0006.magic_circle/init/apply.m with storage asset:context this

# 初回の補間準備として3tick待機する
    data modify storage asset:context this.SpinInterval set value 3

# 消滅までの残り時間を初期化する
    data modify storage asset:context this.RemainingTick set from storage asset:context this.Tick
