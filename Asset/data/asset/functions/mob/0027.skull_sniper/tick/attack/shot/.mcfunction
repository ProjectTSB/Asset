#> asset:mob/0027.skull_sniper/tick/attack/shot/
#
# 弾の処理
#
# @within function asset:mob/0027.skull_sniper/tick/attack/

# 演出
    function asset:mob/0027.skull_sniper/tick/attack/shot/vfx/shot

# 再帰開始
    data modify storage asset:temp Projectile.Damage set from storage asset:context this.Damage
    data modify storage asset:temp Projectile.Pierce set from storage asset:context this.Pierce
    function asset:mob/0027.skull_sniper/tick/attack/shot/rec

# リセット
    data remove storage asset:temp Projectile
