#> asset:artifact/0976.brave_sword/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/976/click/


# スコア持ってないなら0に
    execute unless entity @s[scores={R4.Combo=0..}] run scoreboard players set @s R4.Combo 0

# 攻撃
    execute if entity @s[scores={R4.Combo=0}] run function asset:artifact/0976.brave_sword/click/combo/slash1
    execute if entity @s[scores={R4.Combo=1}] run function asset:artifact/0976.brave_sword/click/combo/slash2
    execute if entity @s[scores={R4.Combo=2}] run function asset:artifact/0976.brave_sword/click/combo/slash3

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=R4.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:artifact/0976.brave_sword/click/slash_entity/init

# コンボカウント
    scoreboard players set @s R4.Wait 13
    scoreboard players add @s R4.Combo 1
    scoreboard players set @s[scores={R4.Combo=3..}] R4.Combo 0

# スケジュール開始
    schedule function asset:artifact/0976.brave_sword/click/slash_entity/1.tick 1t replace
    schedule function asset:artifact/0976.brave_sword/click/combo/1.tick 1t replace
