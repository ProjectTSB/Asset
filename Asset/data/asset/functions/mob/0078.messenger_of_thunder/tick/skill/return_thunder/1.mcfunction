#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1
#
# 返ってくる雷のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1
    execute if entity @s[scores={26.Tick=0..29}] rotated ~ 0 positioned ~ ~0.2 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/2.ready

# 技を使う
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/3.active

# HP半分以下で少し遅れて追加で2本召喚
    execute if entity @s[tag=26.Phase2,scores={26.Tick=30}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/4.addition_thunder

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
