#!/bin/bash
echo -e "`chronyc sources`\n$(printf '=%.0s' {1..79})"
awk '
    NR>=1 && NR<=3 { print }
    NR>=4 && NR<=6 {
        if (NR == 4) $2="time    "
        if (NR == 5) $2="offset    "
        if (NR == 6) $2="offset     "
        $4=$4*1000; $5="milliseconds"; print
    }
    NR>=7 && NR<=9 { print }
    NR==10 { $2="delay     "; $4=$4*1000; $5="milliseconds"; print }
    NR==11 { $4=$4*1000; $5="milliseconds"; print }
    NR>=12 { print }
' <<< "`chronyc tracking`"
