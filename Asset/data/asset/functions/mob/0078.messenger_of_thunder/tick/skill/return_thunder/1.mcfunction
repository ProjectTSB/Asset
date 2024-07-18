#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1
#
# 返ってくる雷のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1
    execute if entity @s[scores={26.Tick=0..29}] rotated ~ 0 positioned ~ ~0.2 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/2.ready

# 技を使う
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/4.active

# HP半分以下で少し遅れて追加で2本召喚
# ハードなら関係なく2本追加
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=30}] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/5.addition_thunder
    execute if entity @s[scores={26.Tick=30}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/5.addition_thunder

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
