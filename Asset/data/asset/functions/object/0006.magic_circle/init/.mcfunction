#> asset:object/0006.magic_circle/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/6/init

# 本体と裏面に同じ表示を設定する
    function asset:object/0006.magic_circle/init/apply.m with storage asset:context this
    execute on passengers run function asset:object/0006.magic_circle/init/apply.m with storage asset:context this
