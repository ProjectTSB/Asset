#> asset:nexus_loader/register
#
#
#
# @within tag/function asset:nexus_loader/register

#> Private
# @private
#declare storage world_manager:nexus_loader

# the_nether
data modify storage world_manager:nexus_loader Registry[0].B set value {X:[999999,999999],Y:[999999,999999],Z:[999999,999999]}
data modify storage world_manager:nexus_loader Registry[0].N set value []
data modify storage world_manager:nexus_loader Registry[0].Outliers set value []

# overworld
data modify storage world_manager:nexus_loader Registry[1] set value {B:{X:[999999,999999],Y:[999999,999999],Z:[999999,999999]},N:[]}
data modify storage world_manager:nexus_loader Registry[1].Outliers set value []

# the_end
data modify storage world_manager:nexus_loader Registry[2] set value {B:{X:[999999,999999],Y:[999999,999999],Z:[999999,999999]},N:[]}
data modify storage world_manager:nexus_loader Registry[2].Outliers set value []
