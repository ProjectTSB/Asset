#> asset:mob/0078.messenger_of_thunder/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0078.messenger_of_thunder/_/init

# スポーン時スコア設定
    scoreboard players set @s 26.Tick -80

# スポーン時、ハード以上なら即フェーズ2へ
    execute if predicate api:global_vars/difficulty/min/hard run tag @s add 26.Phase2
    execute if predicate api:global_vars/difficulty/min/hard run item replace entity @s weapon.mainhand with bow{CustomModelData:20188,Enchantments:[{id:"punch",lvl:3s}]}
