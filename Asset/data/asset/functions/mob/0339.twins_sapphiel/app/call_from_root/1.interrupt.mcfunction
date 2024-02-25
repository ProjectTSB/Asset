#> asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/ai/2.1.phase_sapphiel

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# ガード回数リセット
    scoreboard players set @s 9F.GuardCount 0

# ランダムで行動させる
    function asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    # tag @s add 9F.Skill.Hg.Reload
    # tag @s add 9F.Skill.Hg.Fullburst.Start
    # tag @s add 9F.Skill.Cover
    # tag @s add 9F.Skill.Damage.Stun.Start
    # tp @s 179.8 211 18.5
