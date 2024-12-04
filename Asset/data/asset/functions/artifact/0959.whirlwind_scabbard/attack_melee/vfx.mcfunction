#> asset:artifact/0959.whirlwind_scabbard/attack_melee/vfx
#
# 攻撃時の演出
#
# @within function asset:artifact/0959.whirlwind_scabbard/attack_melee/

# 演出
    particle cloud ~ ~1.2 ~ 0.4 0.4 0.4 0.3 15 normal @a
    particle sneeze ~ ~1.2 ~ 0.4 0.4 0.4 0.3 15 normal @a
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 2 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.6 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.4 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.2 1.2 0
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 1 0