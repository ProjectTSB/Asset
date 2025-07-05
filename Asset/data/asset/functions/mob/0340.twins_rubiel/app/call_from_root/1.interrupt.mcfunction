#> asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt
#
# root側から呼び出される処理
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/ai/2.2.phase_rubiel

# 納刀中の場合、居合斬りに移行
    execute if entity @s[tag=9G.Skill.Kt.Sheathe.Wait.Jumonji] run tag @s add 9G.Temp.Animated.Draw

# アニメーション再生停止
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation

# 状態リセット
    function asset:mob/0340.twins_rubiel/app/general/8.reset_state

# 中心点からあまりにも離れている場合、中心に戻る
    execute if entity @s[tag=!9G.Temp.Animated] unless entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..30] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/7.return
    # execute if entity @s[tag=!9G.Temp.Animated] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/7.return

# なにも武器を持っていない場合、装備する
    execute if entity @s[tag=!9G.Temp.Animated,tag=!9G.State.Weapon.Kt,tag=!9G.State.Weapon.Sc] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/3.equip

# ガード回数リセット
    scoreboard players set @s 9G.GuardCount 0

# 居合斬り発動
    execute if entity @s[tag=9G.Temp.Animated.Draw] run tag @s add 9G.Skill.Kt.Draw.Jumonji
    execute if entity @s[tag=9G.Skill.Kt.Draw.Jumonji] run tag @s remove 9G.Skill.Kt.Sheathe.Wait.Jumonji

# ランダムで行動させる
    execute if entity @s[tag=!9G.Temp.Animated,tag=!9G.Skill.Kt.Draw.Jumonji] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt

# 終了
    tag @s remove 9G.Temp.Animated.Draw

# TODO:デバッグ用アニメーション強制再生、いずれ消去
    # tag @s add 9G.Skill.Kt.Sheathe
    # tp @s 179.8 211 18.5
    # tag @s add 9G.Skill.Damage.Stun.Start
    # tag @s add 9G.Skill.Cover
    # tag @s remove 9G.State.Weapon.Kt
