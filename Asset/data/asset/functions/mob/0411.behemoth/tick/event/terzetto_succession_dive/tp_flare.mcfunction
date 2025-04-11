#> asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/tp_flare
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare

# 攻撃位置移動
    tp @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,tag=!BF.Temp.Dummy,sort=random,limit=1] ~ ~ ~ ~ 0
    execute as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,tag=!BF.Temp.Dummy,sort=nearest,limit=1] at @s run function asset:mob/0411.behemoth/tick/util/move_to_ground

# 終了
    tag @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,tag=!BF.Temp.Dummy,sort=nearest,limit=1] add BF.Temp.Dummy
