#> asset:object/1040.thelema_persuit_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1040/init

# 演出
    particle wax_off ~ ~0.2 ~ 0 0.2 0 2 4 normal @a
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.5 0

# スピード関連のデータ設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 500
    data modify storage asset:context this.MovePerStep set value -0.1

# 継承
    function asset:object/super.init
