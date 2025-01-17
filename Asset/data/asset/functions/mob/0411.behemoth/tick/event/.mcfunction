#> asset:mob/0411.behemoth/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0411.behemoth/tick/

# 登場
    execute if entity @s[tag=BF.Skill.Start] run function asset:mob/0411.behemoth/tick/event/start/

# 待機
    execute if entity @s[tag=BF.Skill.Idle] run function asset:mob/0411.behemoth/tick/event/idle/
# 移動
    execute if entity @s[tag=BF.Skill.Move] run function asset:mob/0411.behemoth/tick/event/move/

# フレアブレス
    execute if entity @s[tag=BF.Skill.FlareBreath] run function asset:mob/0411.behemoth/tick/event/flarebreath/

# フラッテン
    execute if entity @s[tag=BF.Skill.Flatten] run function asset:mob/0411.behemoth/tick/event/flatten/
