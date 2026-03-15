#> asset:mob/0274.death_saw_jiki/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/274/move

# 壁貫通のないように移動
    data modify storage lib: Argument.SlideMove.Speed set from storage asset:context this.Speed
    function lib:slide_move/
