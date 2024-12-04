#> asset:artifact/0077.swords_of_waterfall_climbing/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# リログ時落下攻撃をそのまま継続
    execute if entity @s[tag=25.EffectClear] run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/3.1.effectclear