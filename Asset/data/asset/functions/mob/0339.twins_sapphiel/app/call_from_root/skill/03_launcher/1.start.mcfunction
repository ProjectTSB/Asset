#> asset:mob/0339.twins_sapphiel/app/call_from_root/skill/03_launcher/1.start
#
# root側から呼び出される処理 スキル開始・ランチャー
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/03_launcher/1.main

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# 再生
    tag @s add 9F.Skill.Lc.Jump
