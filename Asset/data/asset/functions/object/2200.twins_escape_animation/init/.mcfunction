#> asset:object/2200.twins_escape_animation/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2200/init

# Posを分解
    data modify storage asset:temp Pos set from storage asset:context this.Pos
    data remove storage asset:context this.Pos
    data modify storage asset:context this.Pos.X set from storage asset:temp Pos[0]
    data modify storage asset:context this.Pos.Y set from storage asset:temp Pos[1]
    data modify storage asset:context this.Pos.Z set from storage asset:temp Pos[2]
    data remove storage asset:temp Pos
