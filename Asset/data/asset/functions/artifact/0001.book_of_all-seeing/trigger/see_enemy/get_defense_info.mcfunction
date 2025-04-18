#> asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/

#> Val
# @private
#declare score_holder $Defense

# 取得
    execute store result score $Defense Temporary run data get storage asset:temp 01.Def 100
    execute unless data storage asset:temp 01.Def run scoreboard players set $Defense Temporary 100
# 耐性値に応じてメッセージを変更
    # 高い
        execute if score $Defense Temporary matches 190.. run data modify storage asset:temp 01.Def set value '{"text":"a","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 170..189 run data modify storage asset:temp 01.Def set value '{"text":"b","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 150..169 run data modify storage asset:temp 01.Def set value '{"text":"c","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 130..149 run data modify storage asset:temp 01.Def set value '{"text":"d","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 110..129 run data modify storage asset:temp 01.Def set value '{"text":"e","font":"artifact/1/info"}'

    # 普通
        execute if score $Defense Temporary matches 90..109 run data modify storage asset:temp 01.Def set value '{"text":"f","font":"artifact/1/info"}'

    # 低い
        execute if score $Defense Temporary matches 70..89 run data modify storage asset:temp 01.Def set value '{"text":"g","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 50..69 run data modify storage asset:temp 01.Def set value '{"text":"h","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 30..49 run data modify storage asset:temp 01.Def set value '{"text":"i","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches 10..29 run data modify storage asset:temp 01.Def set value '{"text":"j","font":"artifact/1/info"}'
        execute if score $Defense Temporary matches ..9 run data modify storage asset:temp 01.Def set value '{"text":"k","font":"artifact/1/info"}'
# リセット
    scoreboard players reset $Defense Temporary
