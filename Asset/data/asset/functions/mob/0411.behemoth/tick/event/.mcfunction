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

# テルツェット・サクセッション
    execute if entity @s[tag=BF.Skill.Ter.Succ.A] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/
    execute if entity @s[tag=BF.Skill.Ter.Succ.B] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_b/
    execute if entity @s[tag=BF.Skill.Ter.Succ.Dive] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/

# テルツェット・ディザスター
    execute if entity @s[tag=BF.Skill.Ter.Dis] run function asset:mob/0411.behemoth/tick/event/terzetto_disaster/

# テルツェット・アライニング
    execute if entity @s[tag=BF.Skill.Ter.Alig] run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/
