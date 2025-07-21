#!/bin/bash

# Paths to the output files
NETHER_OUTLIERS="output/strpack-rtree-nbttag-the_nether-outliers.txt"
OVERWORLD="output/strpack-rtree-nbttag-overworld.txt"
OVERWORLD_OUTLIERS="output/strpack-rtree-nbttag-overworld-outliers.txt"
THE_END="output/strpack-rtree-nbttag-the_end.txt"

# Path to the target mcfunction file
TARGET="../Asset/data/asset/functions/nexus_loader/register.mcfunction"

# Read the contents of the output files
NETHER_OUTLIERS_CONTENT=$(<"$NETHER_OUTLIERS")
OVERWORLD_CONTENT=$(<"$OVERWORLD")
OVERWORLD_OUTLIERS_CONTENT=$(<"$OVERWORLD_OUTLIERS")
THE_END_CONTENT=$(<"$THE_END")

# Update the mcfunction file
sed -i "14s|set value.*|set value $NETHER_OUTLIERS_CONTENT|" "$TARGET"
sed -i "17s|set value.*|set value $OVERWORLD_CONTENT|" "$TARGET"
sed -i "18s|set value.*|set value $OVERWORLD_OUTLIERS_CONTENT|" "$TARGET"
sed -i "21s|set value.*|set value $THE_END_CONTENT|" "$TARGET"

echo "register.mcfunction has been updated successfully."
