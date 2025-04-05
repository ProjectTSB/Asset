#> asset:object/1131.red_knight_slash_shot/init/
#
#
#
# @within function asset:object/alias/1131/init

# これを放つ斬撃が毎回方向が違うので、ここで向きを適用
    data modify entity @s transformation.left_rotation set from storage asset:context this.transformation.left_rotation

# Super
    function asset:object/super.init
