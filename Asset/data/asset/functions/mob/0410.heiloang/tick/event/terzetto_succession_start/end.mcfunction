#> asset:mob/0410.heiloang/tick/event/terzetto_succession_start/end
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_succession_start/

# タグ消去
    tag @s remove BE.Skill.Ter.Succ.Start
    scoreboard players set @s BE.EventTimer 0

# ヘイローン先行
    execute if predicate lib:random_pass_per/50 run tag @s add BE.Skill.Ter.Succ.A
    execute if entity @s[tag=BE.Skill.Ter.Succ.A] as @e[type=slime,tag=BF.EntityRoot] at @s run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/start
    execute if entity @s[tag=BE.Skill.Ter.Succ.A] as @e[type=slime,tag=BG.EntityRoot] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/start

# 眷属先行
    execute unless entity @s[tag=BE.Skill.Ter.Succ.A] run tag @s add BE.Skill.Ter.Succ.B
    execute if entity @s[tag=BE.Skill.Ter.Succ.B] as @e[type=slime,tag=BF.EntityRoot] at @s run function asset:mob/0411.behemoth/tick/event/terzetto_succession_b/start
    execute if entity @s[tag=BE.Skill.Ter.Succ.B] as @e[type=slime,tag=BG.EntityRoot] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_succession_b/start
