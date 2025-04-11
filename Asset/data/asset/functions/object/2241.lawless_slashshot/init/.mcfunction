#> asset:object/2241.lawless_slashshot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2241/init

# 発射者から指定された向きを適用する
    data modify entity @s transformation.left_rotation set from storage asset:context this.transformation.left_rotation

# Super
    function asset:object/super.init
