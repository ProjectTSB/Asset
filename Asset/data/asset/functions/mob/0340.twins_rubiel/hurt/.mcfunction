#> asset:mob/0340.twins_rubiel/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/340/hurt

function asset:mob/super.hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# TODO:被ダメージ量の計算

# 紐づけられたRootにhurt処理を移譲
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/3.2.hurt_rubiel
    scoreboard players reset $Uid Temporary

# ダメージリアクション
    execute if entity @s[tag=9G.Skill.Kt.Sheathe.Wait.Jumonji] run function asset:mob/0340.twins_rubiel/hurt/app/3.sheathe_counter
    execute if entity @s[tag=9G.State.IsGuard] run function asset:mob/0340.twins_rubiel/hurt/app/1.guard
    execute if entity @s[tag=9G.State.IsDamage,tag=!9G.Skill.Kt.Draw.Jumonji] run function asset:mob/0340.twins_rubiel/hurt/app/2.damage
    execute if entity @s[tag=9G.State.IsDamage,tag=9G.Skill.Kt.Draw.Jumonji] run function asset:mob/0340.twins_rubiel/hurt/app/4_sheathe_damage

# 効果音
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.8
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[tag=9G.Skill.Kt.Guard] run playsound block.anvil.place hostile @a ~ ~ ~ 0.7 1.9
    execute unless entity @s[tag=9G.Skill.Kt.Guard] run playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1
