#> asset:mob/0410.heiloang/tick/event/sweep/attack
#
# なぎはらい火炎放射
#
# @within function asset:mob/0410.heiloang/tick/event/sweep/attack

# 演出
    particle explosion ~ ~ ~ 1 1 1 0 1 force
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.5
    scoreboard players set @s BE.Dummy 30
    function asset:mob/0410.heiloang/tick/event/sweep/attack_loop
    scoreboard players reset @s BE.Dummy

# # 一定tickごとにダメージ
#     scoreboard players operation @s BE.Dummy = @s BE.EventTimer
#     scoreboard players operation @s BE.Dummy %= $7 Const
#     execute if score @s BE.Dummy matches 1.. run return run scoreboard players reset @s BE.Dummy

# # ダメージ
#     data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sweep
#     data modify storage api: Argument.AttackType set value "Magic"
#     data modify storage api: Argument.ElementType set value "Fire"
#     function api:damage/modifier
#     execute as @a[tag=BE.Temp.HitFlame] run function api:damage/
#     function api:damage/reset

# # 終了
#     scoreboard players reset @s BE.Dummy
#     tag @a[tag=BE.Temp.HitFlame] remove BE.Temp.HitFlame
