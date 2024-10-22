#> asset:object/2073.flame_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2073/init

# スピード設定
# Speed(再帰回数)はフィールドから取得
    data modify storage asset:context this.Speed set from storage asset:context this.Speed
    data modify storage asset:context this.Range set value 200
    data modify storage asset:context this.MovePerStep set value 0.25

# 継承
    function asset:object/super.init
