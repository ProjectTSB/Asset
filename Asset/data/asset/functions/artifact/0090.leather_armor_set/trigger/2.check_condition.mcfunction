#> asset:artifact/0090.leather_armor_set/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0090.leather_armor_set/trigger/1.trigger

#> private
# @private
    #declare score_holder $Progress

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 攻略度チェック
    # function api:global_vars/game_progress
    # execute store result score $Progress Temporary run data get storage api: Return.Progress 100
    # execute unless score $Progress Temporary matches 0.. run tellraw @s [{"text":"この神器を解凍するには攻略度が","color":"white"},{"text":"\u0002","font":"space"},{"text":"0%","font":"default","color":"aqua"},{"text":"\u0002","font":"space"},{"text":"必要なようだ...","font":"default","color":"white"}]
    # execute unless score $Progress Temporary matches 0.. run tag @s remove CanUsed
    # scoreboard players reset $Progress Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0090.leather_armor_set/trigger/3.main
