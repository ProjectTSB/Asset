#> asset:mob/0338.corundum_twins/app/call_from_twins/skill/01_crossfire/1.rubiel_hit
#
# シンクロスキル 交差攻撃 ルビィの斬り上げがヒットした
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/5.damage

# 状態更新
    tag @s add 9E.Skill.Crossfire.Ruby.Hit
    tag @s remove 9E.State.GetAwait.Sapphiel

# 攻撃位置決定用
    summon area_effect_cloud ^ ^2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","9E.Temp.Target.Aec.0"]}
