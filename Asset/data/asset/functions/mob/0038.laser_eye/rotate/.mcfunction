#> asset:mob/0038.laser_eye/rotate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/38/rotate

# 最も近いプレイヤーの位置に応じて追尾性能を変える
    execute unless entity @p[tag=!PlayerShouldInvulnerable,distance=..6] if entity @p[tag=!PlayerShouldInvulnerable,distance=7..32] run data modify storage asset:context this.Rotate set from storage asset:context this.RotatePower.Far
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..6] run data modify storage asset:context this.Rotate set from storage asset:context this.RotatePower.Near

# super.rotate
    function asset:mob/super.method
