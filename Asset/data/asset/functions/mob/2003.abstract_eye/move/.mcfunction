#> asset:mob/2003.abstract_eye/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2003/move

# 壁貫通のないように移動
    data modify storage lib: Argument.SlideMove.Speed set from storage asset:context this.Speed
    data modify storage lib: Argument.SlideMove.Conditions set value "anchored eyes unless block ^ ^ ^ #lib:no_collision/"
    function lib:slide_move/
