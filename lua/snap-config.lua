local snap = require'snap'
local limit = snap.get'consumer.limit'
local producer_vimgrep = snap.get'producer.ripgrep.vimgrep'
local select_vimgrep = snap.get'select.vimgrep'
snap.register.map({"n"}, {"<Leader>fw"}, function ()
snap.run {
  producer = snap.get'producer.ripgrep.vimgrep',
  steps = {{
    consumer = snap.get'consumer.fzf',
    config = {prompt = "FZF>"}
  }},
  select = snap.get'select.file'.select,
  multiselect = snap.get'select.file'.multiselect,
  views = {snap.get'preview.file'}
}
end)
snap.register.map({"n"}, {"<Leader>fz"}, function ()
snap.run {
  producer = snap.get'consumer.fzf'(snap.get'producer.ripgrep.file'),
  select = snap.get'select.file'.select,
  multiselect = snap.get'select.file'.multiselect,
  views = {snap.get'preview.file'}
}
end)
