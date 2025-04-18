#> asset:mob/0412.tiamat/tick/event/offering_end/end
#
# フリージングエンド
#
# @within asset:mob/0412.tiamat/tick/event/offering_end/

# タグ消去
    tag @s remove BG.Skill.Freeze

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
