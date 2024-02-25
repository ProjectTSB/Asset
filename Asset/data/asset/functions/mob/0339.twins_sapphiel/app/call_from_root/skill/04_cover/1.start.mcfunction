#> asset:mob/0339.twins_sapphiel/app/call_from_root/skill/04_cover/1.start
#
# root側から呼び出される処理 スキル開始・怯みかばい
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_2_sapphiel_cover/1.main

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# 武器解除
    tag @s remove 9F.State.Weapon.Hg
    tag @s remove 9F.State.Weapon.Sg

# タグ付与
    tag @s add 9F.Skill.Cover
