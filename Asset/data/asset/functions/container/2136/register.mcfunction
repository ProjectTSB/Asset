#> asset:container/2136/register
#
# コンテナの定義データ
#
# @within function asset:container/2136/


execute unless loaded 79 190 1956 run return 1

# ID (int)
    data modify storage asset:container ID set value 2136
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [79, 190, 1956]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:white_shulker_box[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:10b,Item:{id:"minecraft:chainmail_helmet",Count:1b,tag:{"Damage":0,"display":{"Name":"{\"text\":\"愚か者には見えない被り物\",\"color\":\"black\",\"italic\":false}"}}}},{Slot:12b,Item:{id:"minecraft:chainmail_chestplate",Count:1b,tag:{"Damage":0,"display":{"Name":"{\"text\":\"愚か者には見えない胴帷子\",\"color\":\"black\",\"italic\":false}"}}}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;679103516,-1595784881,-1595392151,1595184642],"Name":"blanoir3298","Properties":{"textures":[{"Signature":"oEO0U5dTfYhv0RHnatFlVtRreADiKNSTuh153ScZ0WPxQ4TJzqhC0sUj76L3+j0aQbNMHiEYJWhoWWNB11wD2eHxUu/OSEcSlBzJeqtWWyvTqF6ZFl/NlC/QJM2rJf0+RHL+RH+VpaMjfTe3eqtNrLlnF9y2a4xiqh8n1B0gub4WmUKU6enTICxhkn16387a3UJLCEmREe2YrdLoizpSZmJiOtQBINrrRvkssYhukIF1g1gqwAS4QmhYjhk0t12l1GfSFAjEEMpxpwKLfjMKdDX9QKPn4NxmzMaGP8EFz11Fj6PxXjpoQ9XvdnrgvNtNTgvRywrICjUQugjd5j8GtAxr4FfGKho6f2eA3sefWzGnE/lUudMmoys7tThIQLrfCHokVzYLcCAGN7ghzayY+UI5k4CduHmj3PD++HEn0Zh24d4pwNTdMlFQdhaAVP+yHRPQqkqhEfijiceu7JVeKpovh8PNfp5HKOy+xo6nkd+kHYkYMZ7xGblUXzrkzokQEXkqHt2uKirzInVIBw9rOjHcS3cuBpGiRJtWg1UFcqDdrkiYUy6zhgwlt1Ea7mj13staLHGZj5FZC06RaIzJ9ridSDMoWTk2KXYJxypE2Yd4DGx4PsvWlXG5e5wEqew+1FFv32QQy2jTm54hfQAq0hEgS/CR3XMYUymWEUM1RXI=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0NDk5MzY0MDE5NywKICAicHJvZmlsZUlkIiA6ICIyODdhNGMxY2EwZTI0MTRmYTBlODNmNjk1ZjE0OTYwMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJibGFub2lyMzI5OCIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS85MTA2Mzg4ZmM0ZjY2NGU5ZjFjODNlNjcyMmNkZDY0OWZkNWM2YWY3YTI0NTQ2MmVjMjNkZTUyOTI2NWQwY2U1IgogICAgfQogIH0KfQ=="}]}},"display":{"Lore":["{\"text\":\"よくここがわかったね？\",\"color\":\"gray\",\"italic\":false}"]}}}},{Slot:14b,Item:{id:"minecraft:chainmail_leggings",Count:1b,tag:{"Damage":0,"display":{"Name":"{\"text\":\"愚か者には見えない脛当\",\"color\":\"black\",\"italic\":false}"}}}},{Slot:16b,Item:{id:"minecraft:chainmail_boots",Count:1b,tag:{"Damage":0,"display":{"Name":"{\"text\":\"愚か者には見えない靴\",\"color\":\"black\",\"italic\":false}"}}}}]