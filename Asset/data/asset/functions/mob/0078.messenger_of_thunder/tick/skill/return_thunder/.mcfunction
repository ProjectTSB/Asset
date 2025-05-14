#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/
#
# 返ってくる雷のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# 予備動作
    execute if entity @s[scores={General.Mob.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1
    execute if entity @s[scores={General.Mob.Tick=0..29}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/ready

# 技を使う
    execute if entity @s[scores={General.Mob.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/active

# ノーマルでかつ、HP半分以下で少し遅れて追加で2本召喚
# ハード以上なら関係なく2本追加
    execute if entity @s[tag=26.HPLess50Per,scores={General.Mob.Tick=30}] if predicate api:global_vars/difficulty/normal run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/addition_thunder
    execute if entity @s[scores={General.Mob.Tick=30}] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/addition_thunder

# リセット
    execute if entity @s[scores={General.Mob.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
