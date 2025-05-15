#> asset:object/2154.haruclaire_super_icebullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2154/init

# スピード関連の設定
    # data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 200
    execute if predicate api:global_vars/difficulty/1_normal run data modify storage asset:context this.MovePerStep set value 0.2
    execute if predicate api:global_vars/difficulty/2_hard run data modify storage asset:context this.MovePerStep set value 0.3
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage asset:context this.MovePerStep set value 0.33

# Tick初期値
    execute store result score @s General.Object.Tick run random value -5..0

# 継承
    function asset:object/super.init

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1
