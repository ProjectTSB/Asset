#> asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function

# アニメーション再生停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    tag @s add 9F.Skill.Hg.Reload
    # tag @s add 9F.Skill.Hg.Fullburst.Start
    # tag @s add 9F.Skill.Cover
    # tag @s add 9F.Skill.Damage.Stun.Start
    # tp @s 179.8 211 18.5

# 状態リセット
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# ガード回数リセット
    scoreboard players set @s 9F.GuardCount 0

# デバッグ
    # scoreboard players set @s 9F.BulletCount.Hg 0
    # tag @s remove 9F.State.Weapon.Hg
