#!/bin/bash

# Output CSV file
output_csv="input/traders.csv"

# Clear the output file
> "$output_csv.tmp"

# Iterate over all register.mcfunction files
find ../Asset/data/asset/functions/trader/ -type f -name "register.mcfunction" | while read -r file; do
    # Initialize variables
    id=""
    posX=""
    posY=""
    posZ=""

    # Read each line of the file
    while IFS= read -r line; do
        # Extract ID
        if [[ $line =~ data\ modify\ storage\ asset:trader\ ([^[:space:]]+)\ set\ value\ (.+) ]]; then
            key="${BASH_REMATCH[1]}"
            value="${BASH_REMATCH[2]}"

            if [[ $key == "ID" ]]; then
                # Remove newlines and trim whitespace from ID
                id=$(echo "$value" | tr -d '\n' | xargs)
            elif [[ $key == "Pos" ]]; then
                # Extract PosX, PosY, PosZ from array
                if [[ $value =~ \[([0-9.-]+),([0-9.-]+),([0-9.-]+)\] ]]; then
                    posX="${BASH_REMATCH[1]}"
                    posY="${BASH_REMATCH[2]}"
                    posZ="${BASH_REMATCH[3]}"
                fi
            fi
        fi
    done < "$file"

    # Append data to temporary file
    if [[ -n $id && -n $posX && -n $posY && -n $posZ ]]; then
        echo "$id,overworld,$posX,$posY,$posZ" >> "$output_csv.tmp"
    fi
done

# Sort the temporary file by ID numerically and save to the final output file
sort -t, -k1,1n "$output_csv.tmp" > "$output_csv"

# Remove the temporary file
rm "$output_csv.tmp"
