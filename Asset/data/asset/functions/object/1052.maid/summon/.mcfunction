#> asset:object/1052.maid/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1052/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Invulnerable:0b,Health:600f,Tags:["Friend","ObjectInit"],Attributes:[{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:32},{Name:generic.movement_speed,Base:0.45},{Name:generic.attack_damage,Base:-999},{Name:generic.attack_knockback,Base:0.8}]}
