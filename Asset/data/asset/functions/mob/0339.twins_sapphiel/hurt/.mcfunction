#> asset:mob/0339.twins_sapphiel/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/339/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

function asset:mob/super.hurt

# TODO:被ダメージ量の計算

# 紐づけられたRootにhurt処理を移譲
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/3.1.hurt_sapphiel
    scoreboard players reset $Uid Temporary

# ダメージリアクション
    execute if entity @s[tag=9F.State.IsGuard] run function asset:mob/0339.twins_sapphiel/hurt/app/1.guard
    execute if entity @s[tag=9F.State.IsDamage] run function asset:mob/0339.twins_sapphiel/hurt/app/2.damage

# 効果音
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.5
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound item.shield.block hostile @a ~ ~ ~ 1 2
    execute unless entity @s[tag=9F.Skill.Hg.Guard] run playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1
