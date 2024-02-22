#> asset:mob/0339.twins_sapphiel/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0339.twins_sapphiel/hurt/1.trigger

# TODO:被ダメージ量の計算

# TODO:紐づけられたRootにhurt処理を移譲
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/3.1.hurt_sapphiel
    scoreboard players reset $Uid Temporary

# ダメージリアクション
    execute if entity @s[tag=9F.State.IsGuard] run function asset:mob/0339.twins_sapphiel/hurt/app/1.guard
    execute if entity @s[tag=9F.State.IsDamage] run say 怯み

# 効果音
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.5
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7
    execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound block.anvil.place hostile @a ~ ~ ~ 1 1.7
    # execute if entity @s[tag=9F.Skill.Hg.Guard] run playsound item.shield.block hostile @a ~ ~ ~ 1 2
