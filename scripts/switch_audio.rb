require 'yaml'

scripts = [
  "pactl list sinks",
  "grep -E '(Sink|Name|Description)'",
  "sed -E 's,(Sink #),- sink: ,g'",
  "sed -E 's,(Name: ),name: ,g'",
  "sed -E 's,(Description: ),description: ,g'",
  "sed -E 's,\t,  ,g'"
]
command = scripts.join(' | ')

sinks = YAML.load(`#{command}`)

if ENV['SINKS']

end
