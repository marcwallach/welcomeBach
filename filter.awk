#!/bin/awk -f

BEGIN { FS = ":\"" ; OFS = "\t" }

{ for (i=1; i<=NF; i++)
	{ if ($(i-1) ~ /"title":{"runs":\[{"text"/ && $i !~ /"https:\/\//)
			{ gsub(/"}],.*/, "", $i)
		      table[a++] = $i
			}

	  if ($i ~ /watch\?/ && $i !~ /list/)
			{ gsub(/",".*/, "", $i)
			  array[b++] = $i
			  if (b==5) exit
			}
	}
}

END {
for (i=0; i<b; i++)
		print table[i], "https://www.youtube.com" array[i]
}
