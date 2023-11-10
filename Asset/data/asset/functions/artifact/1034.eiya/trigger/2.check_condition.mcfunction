#> asset:artifact/1034.eiya/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1034.eiya/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 斬撃のクールダウン中は発動できない
    execute if entity @s[scores={SQ.SkillCooldown=1..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1034.eiya/trigger/3.main