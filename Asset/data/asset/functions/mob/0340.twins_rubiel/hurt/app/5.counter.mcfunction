#> asset:mob/0340.twins_rubiel/hurt/app/5.counter
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0340.twins_rubiel/hurt/app/1.guard

# rootに通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/4.2.counter_rubiel
    scoreboard players reset $Uid Temporary

# 強制反撃を行う
    # アニメーション再生停止
        function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    # 状態リセット
        function asset:mob/0340.twins_rubiel/app/general/8.reset_state
    # なにも武器を持っていない場合、装備する
        execute if entity @s[tag=!9G.State.Weapon.Kt,tag=!9G.State.Weapon.Sc,tag=!9G.State.Weapon.Gs] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/3.equip
    # ガード回数リセット
        scoreboard players set @s 9G.GuardCount 0
    # ランダムで行動させる
        execute unless entity @s[tag=9G.Temp.Animated] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt
