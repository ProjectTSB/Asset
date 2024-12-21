#> asset:object/2149.haruclaire_icebullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2149/init

# スピード関連の設定
    # data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 40
    data modify storage asset:context this.MovePerStep set value 1

# Tick初期値
    execute store result score @s General.Object.Tick run random value -5..0

# 継承
    function asset:object/super.init

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1
