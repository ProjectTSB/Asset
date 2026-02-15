#> asset:mob/0456.gargo_ex_machina/tick/event/move/step_sound
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/move/

# 演出
    playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.7
    playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.8
    particle block quartz_block ~ ~ ~ 1 0.1 1 0 15 force @a[distance=..80]
    particle explosion ~ ~ ~ 1 0.1 1 0 2 force @a[distance=..80]
