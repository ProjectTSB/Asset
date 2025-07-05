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

# 中心点からあまりにも離れている場合、中心に戻る
    execute if entity @s[tag=!9F.Temp.Animated] unless entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..30] run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/7.return

# なにも武器を持っていない場合、装備する
    execute if entity @s[tag=!9F.Temp.Animated,tag=!9F.State.Weapon.Hg,tag=!9F.State.Weapon.Sg] run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/3.equip

# ガード回数リセット
    scoreboard players set @s 9F.GuardCount 0

# ランダムで行動させる
    execute unless entity @s[tag=9F.Temp.Animated] run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg

# 終了
    tag @s remove 9F.Temp.Animated

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    # tag @s add 9F.Skill.Hg.Reload
    # tag @s add 9F.Skill.Hg.Fullburst.Start
    # tag @s add 9F.Skill.Cover
    # tag @s add 9F.Skill.Damage.Stun.Start
    # tp @s 179.8 211 18.5
