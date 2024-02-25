#> asset:mob/0340.twins_rubiel/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0340.twins_rubiel/hurt/1.trigger

# TODO:被ダメージ量の計算

# 紐づけられたRootにhurt処理を移譲
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/3.2.hurt_rubiel
    scoreboard players reset $Uid Temporary

# ダメージリアクション
    execute if entity @s[tag=9G.State.IsGuard] run function asset:mob/0340.twins_rubiel/hurt/app/1.guard
    execute if entity @s[tag=9G.State.IsDamage] run function asset:mob/0340.twins_rubiel/hurt/app/2.damage

# 効果音
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.8
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound block.anvil.place hostile @a ~ ~ ~ 0.7 1.9
    execute unless entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1
