#> asset:artifact/0297.spirit_world_trance/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0297.spirit_world_trance/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 戦闘中に使うべからず
    execute if predicate lib:in_battle run tellraw @a {"text":"戦闘中は使用できません。","color":"red"}
    execute if predicate lib:in_battle run tag @s remove CanUsed

# 愚か者を弾く機構
    execute if entity @s[gamemode=spectator,tag=CanUsed] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0297.spirit_world_trance/trigger/3.main
