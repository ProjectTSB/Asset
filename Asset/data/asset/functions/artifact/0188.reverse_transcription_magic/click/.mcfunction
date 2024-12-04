#> asset:artifact/0188.reverse_transcription_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/188/click/

# 演出
    playsound ogg:random.levelup player @s ~ ~ ~ 1 1 1
    particle totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0 100 force @s
# MPをOffhandのMPCostに設定
    execute store result storage api: Argument.MP int 1 run data get storage asset:context Items.offhand.tag.TSB.MPCost
    tellraw @s [{"text": "MPが ["},{"nbt": "Inventory[{Slot:-106b}].tag.display.Name","storage": "api:","interpret": true},{"text": "] の消費MP [ "},{"storage": "api:","nbt": "Argument.MP"},{"text": " ] になった！"}]
    function api:mp/set
