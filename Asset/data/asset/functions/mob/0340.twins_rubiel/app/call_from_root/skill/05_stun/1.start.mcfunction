#> asset:mob/0340.twins_rubiel/app/call_from_root/skill/05_stun/1.start
#
# root側から呼び出される処理 スキル開始・怯みかばい
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_4_stun/1.main

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0340.twins_rubiel/app/general/8.reset_state

# 武器解除
    tag @s remove 9G.State.Weapon.Kt
    tag @s remove 9G.State.Weapon.Sc
    tag @s remove 9G.State.Weapon.Gs

# タグ付与
    tag @s add 9G.Skill.Damage.Stun.Start

# 気分を下降
    scoreboard players remove @s 9G.MoodPoint 30
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood
