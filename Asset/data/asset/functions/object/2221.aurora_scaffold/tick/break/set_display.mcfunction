#> asset:object/2221.aurora_scaffold/tick/break/set_display
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/

# 3x3の各座標が壊れていなければ破壊演出用item_displayを召喚
    execute unless data storage asset:context this.CheckBreak{1:true} positioned ~ ~ ~ summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{2:true} positioned ~1 ~ ~ summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{3:true} positioned ~1 ~ ~1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{4:true} positioned ~1 ~ ~-1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{5:true} positioned ~-1 ~ ~ summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{6:true} positioned ~-1 ~ ~1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{7:true} positioned ~-1 ~ ~-1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{8:true} positioned ~ ~ ~1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
    execute unless data storage asset:context this.CheckBreak{9:true} positioned ~ ~ ~-1 summon item_display run function asset:object/2221.aurora_scaffold/tick/break/display_init
