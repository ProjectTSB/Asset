#> asset:mob/0340.twins_rubiel/app/call_from_root/skill/00_goalong/1.start
#
# root側から呼び出される処理 スキル開始・集合
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/00_goalong/1.main
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/01_crossfire/1.main

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# タグ付与
    tag @s add 9G.Skill.Sync.Goalong
