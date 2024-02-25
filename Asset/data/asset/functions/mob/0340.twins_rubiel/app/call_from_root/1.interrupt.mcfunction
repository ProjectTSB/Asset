#> asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/ai/2.2.phase_rubiel

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0340.twins_rubiel/app/general/8.reset_state

# ガード回数リセット
    scoreboard players set @s 9G.GuardCount 0

# ランダムで行動させる
    function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    # tag @s add 9G.Skill.Kt.Sheathe
    # tp @s 179.8 211 18.5
    # tag @s add 9G.Skill.Damage.Stun.Start
    # tag @s add 9G.Skill.Cover
    # tag @s remove 9G.State.Weapon.Kt
