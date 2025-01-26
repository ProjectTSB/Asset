#> asset:mob/0339.twins_sapphiel/app/call_from_root/skill/01_crossfire/2.start_pursuit
#
# root側から呼び出される処理 スキル開始・交差攻撃 追撃開始
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/01_crossfire/1.main

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# 再生
    tag @s add 9F.Skill.Sync.Crossfire.Pursuit
