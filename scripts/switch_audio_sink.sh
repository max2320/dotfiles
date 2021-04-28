#!/bin/bash

if [ -z "$1" ]; then
  echo "Valid sinks:" >&2
  pactl list short sinks >&2
  exit 1
fi


# parse_yaml() {
#     local yaml_file=$1
#     local prefix='f'
#     local s
#     local w
#     local fs
#
#     s='[[:space:]]*'
#     w='[a-zA-Z0-9_.-]*'
#     fs="$(echo @|tr @ '\034')"
#
#     (
#         sed -e '/- [^\“]'"[^\']"'.*: /s|\([ ]*\)- \([[:space:]]*\)|\1-\'$'\n''  \1\2|g' |
#
#         sed -ne '/^--/s|--||g; s|\"|\\\"|g; s/[[:space:]]*$//g;' \
#             -e "/#.*[\"\']/!s| #.*||g; /^#/s|#.*||g;" \
#             -e "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
#             -e "s|^\($s\)\($w\)${s}[:-]$s\(.*\)$s\$|\1$fs\2$fs\3|p" |
#
#         awk -F"$fs" '{
#             indent = length($1)/2;
#             if (length($2) == 0) { conj[indent]="+";} else {conj[indent]="";}
#             vname[indent] = $2;
#             for (i in vname) {if (i > indent) {delete vname[i]}}
#                 if (length($3) > 0) {
#                     vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
#                     printf("%s%s%s%s=(\"%s\")\n", "'"$prefix"'",vn, $2, conj[indent-1],$3);
#                 }
#             }' |
#
#         sed -e 's/_=/+=/g' |
#
#         awk 'BEGIN {
#                 FS="=";
#                 OFS="="
#             }
#             /(-|\.).*=/ {
#                 gsub("-|\\.", "_", $1)
#             }
#             { print }'
#     ) < "$yaml_file"
# }
#
# pactl list sinks | \
# grep -E '(Sink|Name|Description)' | \
# sed -E 's,(Sink #),- sink: ,g' | \
# sed -E 's,(Name: ),name: ,g' | \
# sed -E 's,(Description: ),description: ,g' | \
# sed -E 's,\t,  ,g' > /tmp/synks
#
# parse_yaml /tmp/synks

newSink="$1"
streamIds=[]

pactl list short sink-inputs | while read stream;
do
  streamId=$(echo $stream | cut '-d ' -f1)
  pactl move-sink-input "$streamId" "$newSink"
done
