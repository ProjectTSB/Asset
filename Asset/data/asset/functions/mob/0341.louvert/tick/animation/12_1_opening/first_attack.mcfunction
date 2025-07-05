#> asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack
#
# 先制攻撃
#
# @within function asset:mob/0341.louvert/tick/animation/12_1_opening/

# 演出
    execute positioned ^-0.5 ^3 ^ run function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack_vfx

# 火炎陣を一つ召喚
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=nearest,limit=4] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/general/6.fire_magic

# ハードなら火炎陣が増える
    execute if predicate api:global_vars/difficulty/min/3_blessless at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=3] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/12_1_opening/hard_first_attack
