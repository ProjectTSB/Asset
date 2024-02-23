#> asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0340.twins_rubiel/app/general/8.reset_state

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    tag @s add 9G.Skill.Kt.JumpSlash
    # tp @s 179.8 211 18.5
