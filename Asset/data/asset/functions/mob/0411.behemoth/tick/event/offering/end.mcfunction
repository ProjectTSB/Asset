#> asset:mob/0411.behemoth/tick/event/offering/end
#
# ソウルオファリング
#
# @within asset:mob/0411.behemoth/tick/event/offering/

# タグ消去
    tag @s remove BF.Skill.Offering

# 演出
    particle flash ~ ~5 ~ 3 3 3 0 100 force
    particle end_rod ~ ~5 ~ 2 2 2 0.3 100
    playsound block.beacon.activate player @a ~ ~ ~ 3 1.8
    playsound block.beacon.activate player @a ~ ~ ~ 3 1.7
    playsound block.beacon.activate player @a ~ ~ ~ 3 1.6
    playsound block.beacon.power_select player @a ~ ~ ~ 3 1.2
    playsound block.beacon.power_select player @a ~ ~ ~ 3 1.2

# 消失
    function api:mob/remove
