#> asset:mob/2003.abstract_eye/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2003/move

#> Private
# @private
    #declare function lib:slide_move/

# Attributeから自身の移動速度を取得し移動する
    # data modify storage lib: Argument.SlideMove.Condition set value "anchored eyes unless block ^ ^ ^ #lib:no_collision/ anchored feet"
    # execute store result storage lib: Argument.SlideMove.Speed double 0.01 run attribute @s generic.movement_speed get 100
    # function lib:slide_move/

    execute store result storage asset:temp Args.Speed double 0.01 run attribute @s generic.movement_speed get 100
    function asset:mob/2003.abstract_eye/move/tp.m with storage asset:temp Args
    data remove storage asset:temp Args
