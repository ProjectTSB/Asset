#> asset:mob/0456.gargo_ex_machina/tick/event/shot/attack_effect
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/shot/attack

# 効果音
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.7

# 演出
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
    particle explosion ~ ~1 ~ 1.5 1.5 1.5 0 20
    particle lava ~ ~ ~ 1 1 1 0 15
