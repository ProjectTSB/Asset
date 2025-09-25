#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_four_circle/end
#
# アイスクリメーション・円範囲4体
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_four_circle/

# タグ消去
    tag @s remove AK.Skill.IceCremation.FourCircle
    tag @a[tag=AK.MainTarget,distance=..80,limit=1] remove AK.MainTarget

# 中央に移動
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.MoveS
    execute positioned as @e[type=marker,tag=AK.CenterPosition,distance=..80] run summon area_effect_cloud ^ ^0.3 ^ {Tags:["AK.Temp.AttackPosition"],Duration:3}

# 移動後、アイスウォールに移行
    tag @s add AK.Skill.IceWallDuo
