#> asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function 

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    tag @s add 9F.Skill.Hg.Riderkick
    # tp @s 179.8 211 18.5
