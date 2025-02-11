#> asset:mob/0410.heiloang/tick/util/servants_death
#
# 汎用処理 眷属討伐時
#
# @within
#    function asset:mob/0411.behemoth/death/
#    function asset:mob/0412.tiamat/death/

# 連携技の最中の場合、行動をキャンセル
    execute if entity @s[tag=BE.Skill.Ter.Succ.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.A] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.B] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.Dive] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Dis.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Dis] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.A] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.B] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Purg.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Purg] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Rag.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Rag] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Cancel] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
